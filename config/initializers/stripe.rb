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

class RecordSubscriber 
  def call(event)
    event.class       #=> Stripe::Event
    	event.type        #=> "customer.created"
    e =	event.data.object #=> #<Stripe::Charge:0x3fcb34c115f8>  
  end
end

StripeEvent.configure do |events|
  events.subscribe 'customer.created', RecordSubscriber.new 
    UserMailer.failed_charge(e).deliver
end

