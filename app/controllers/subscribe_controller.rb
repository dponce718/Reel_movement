class SubscribeController < ApplicationController
   protect_from_forgery :except => :webhook


  def webhook
  begin
    event_json = JSON.parse(request.body.read)
    event_object = event_json['data']['object']
    #refer event types here https://stripe.com/docs/api#event_types
    case event_json['type']

    when 'customer.created'
      UserMailer.new_member(@user).deliver_now
          UserMailer.welcome_email(@user).deliver_now
      when 'invoice.payment_succeeded'
        handle_success_invoice event_object
      when 'invoice.payment_failed'
        handle_failure_invoice event_object
      when 'charge.failed'
        handle_failure_charge event_object
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
   UserMailer.user_deleted(current_user).deliver
   current_user.destroy
   

   flash[:success] = "Sorry to see you go :("
      redirect_to "/"
 

  end 

protected

  
    def stripe_webhook_id
        params.require(:StripeWebhook).permit(:stripe_id)
    end 

end



