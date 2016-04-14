class SubscribeController < ApplicationController
  

  def new
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
   
    flash[:success] = "Sorry to see you go :("
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

  def index
   
  end

  def create
    raise foo
   end 

end



