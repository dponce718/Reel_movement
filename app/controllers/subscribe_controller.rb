class SubscribeController < ApplicationController
   protect_from_forgery :except => :webhook


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
      UserMailer.welcome_email(current_user).deliver
   
    redirect_to "/subscriptions"

  end

  def destroy

   customer = Stripe::Customer.retrieve(current_user.stripeid).delete
   UserMailer.user_deleted(current_user).deliver
   current_user.destroy
   

   flash[:success] = "Sorry to see you go :("
      redirect_to "/"
 

  end 



def webhook

  begin
    event_json = JSON.parse(request.body.read)
    event_object = event_json['data']['object']
    #refer event types here https://stripe.com/docs/api#event_types
    case event_json['type']

    when 'customer.created'
      UserMailer.new_member(@user).deliver_now


      when 'charge.failed'
         UserMailer.failed_charge(current_user).deliver

      when 'customer.updated'
         UserMailer.updated_info(@user).deliver_now

      when 'charge.dispute.created'
         UserMailer.dispute(@user).deliver_now

      when 'charge.dispute.updated'
         UserMailer.dispute_updated(@user).deliver_now

      when 'charge.dispute.funds_reinstated'
         UserMailer.funds_reinstated(@user).deliver_now

      when 'charge.dispute.funds_withdrawn'

         UserMailer.funds_withdrawn(@user).deliver_now

      when 'charge.dispute.closed'
           UserMailer.dispute_closed(@user).deliver_now
            
               
    end



  rescue Exception => ex
    render :json => {:status => 422, :error => "Webhook call failed"}
    return
  end
  render :json => {:status => 200}
end








protected

  
    def stripe_webhook_id
        params.require(:StripeWebhook).permit(:stripe_id)
    end 

end



