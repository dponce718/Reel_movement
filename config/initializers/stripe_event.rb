StripeEvent.event_retriever = lambda do |params|
  return nil if StripeWebhook.exists?(stripe_id: params[:id])
  StripeWebhook.create!(stripe_id: params[:id])
  Stripe::Event.retrieve(params[:id])
end


StripeEvent.configure do |events|
  events.subscribe 'customer.created' do |event|
     customer = event.data.object
    StripeMailer.new_member(@user).deliver_now
          StripeMailer.welcome_email(@user).deliver_now
          StripeMailer.failed_charge(@user).deliver_now
           StripeMailer.user_deleted(@user).deliver
           StripeMailer.updated_info(@user).deliver
            StripeMailer.dispute(@user).deliver
  end

  events.subscribe 'charge.failed' do |event|
  	customer = event.data.object
    StripeMailer.failed_charge(customer).deliver
end


 events.subscribe 'customer.updated' do |event|
  	customer = event.data.object
  	StripeMailer.updated_info(customer).deliver
   
end

 events.subscribe 'customer.deleted' do |event|
  	customer = event.data.object
    UserMailer.user_deleted(@user).deliver
end

 events.subscribe 'charge.dispute.created' do |event|
  	customer = event.data.object
  	StripeMailer.dispute(customer).deliver
    
end

events.subscribe 'charge.dispute.updated' do |event|
  	customer = event.data.object
  	StripeMailer.dispute_updated(customer).deliver
   
end


events.subscribe 'charge.dispute.funds_reinstated' do |event|
  	customer = event.data.object
  	StripeMailer.funds_reinstated(customer).deliver
    
end


events.subscribe 'charge.dispute.funds_withdrawn' do |event|
  	customer = event.data.object
  	StripeMailer.funds_withdrawn(customer).deliver
   
end


events.subscribe 'charge.dispute.closed' do |event|
  	customer = event.data.object
  	StripeMailer.dispute_closed(customer).deliver
  
end

end

