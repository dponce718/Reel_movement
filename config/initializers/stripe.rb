Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]


StripeEvent.event_retriever = lambda do |params|
  return nil if StripeWebhook.exists?(stripe_id: params[:id])
  StripeWebhook.create!(stripe_id: params[:id])
  Stripe::Event.retrieve(params[:id])
end


StripeEvent.configure do |events|
  events.subscribe 'customer.created' do |event|
   UserMailer.new_member(@user).deliver_now
  end
  events.subscribe 'charge.failed' do |event|
     charge = event.data.object
    UserMailer.failed_charge(charge).deliver
  end
  events.subscribe 'customer.updated' do |event|
   UserMailer.updated_info(@user).deliver
  end
  events.subscribe 'charge.dispute.created' do |event|
    UserMailer.dispute(event.data.object).deliver
  end
  events.subscribe 'charge.dispute.updated' do |event|
    UserMailer.dispute_updated(event.data.object).deliver
  end
  events.subscribe 'dispute.funds_reinstated' do |event|
    UserMailer.funds_reinstated(event.data.object).deliver
  end
  events.subscribe 'dispute.funds_withdrawn' do |event|
    UserMailer.funds_withdrawn(event.data.object).deliver
  end
   events.subscribe 'charge.dispute.closed' do |event|
    UserMailer.dispute_closed(event.data.object).deliver
  end
end