class SubscribeController < ApplicationController
protect_from_forgery :except => :webhook

  # Method responsbile for handling stripe webhooks
# reference https://stripe.com/docs/webhooks
def webhook


  begin
    event_json = JSON.parse(request.body.read)
    event_object = event_json['data']['object']
    #refer event types here https://stripe.com/docs/api#event_types
    case event_json['type']
      when 'invoice.payment_succeeded'
        
      when 'invoice.payment_failed' #credit card does not go through
       
      when 'charge.failed'
        
      when 'charge.succeeded'
        
        when 'customer.created'
          StripeMailer.new_member(@user).deliver_now
          StripeMailer.welcome_email(@user).deliver_now
              StripeMailer.failed_charge(@user).deliver_now
        
      when 'customer.subscription.deleted'
      when 'customer.subscription.updated'
    end
  rescue Exception => ex
    render :json => {:status => 422, :error => "Webhook call failed"}
    return
  end
  render :json => {:status => 200}
end
 
  def update
    #gets the credit card details submitted in the form
    token = params[:stripeToken]

    # Create a Customer
    customer = Stripe::Customer.create(
    :source => token,
    :plan => 'unlimited',
    :email => current_user.email,
    :description => "Another subscriber for the unlimited program"
  )


     current_user.stripeid = customer.id
     current_user.subscribed = true
        current_user.save
   
    redirect_to "/subscriptions"

  end

  def destroy

   customer = Stripe::Customer.retrieve(current_user.stripeid).delete
   current_user.destroy
   

   flash[:success] = "Sorry to see you go :("
      redirect_to "/"
 

  end 

protected

  
    def stripe_webhook_id
        params.require(:StripeWebhook).permit(:stripe_id)
    end 

end



