StripeEvent.event_retriever = lambda do |params|
  return nil if StripeWebhook.exists?(stripe_id: params[:id])
  StripeWebhook.create!(stripe_id: params[:id])
  Stripe::Event.retrieve(params[:id])
end


StripeEvent.configure do |events|
  events.subscribe 'customer.created' do |event|
     customer = event.data.object
    StripeMailer.new_member(current_user).deliver
    StripeMailer.welcome_email(current_user).deliver
  end
end