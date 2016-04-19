StripeEvent.configure do |events|
  events.subscribe 'charge.dispute.created' do |event|
    
  end
end