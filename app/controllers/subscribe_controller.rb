class SubscribeController < ApplicationController
  

  def new
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
        current_user.save
   
    redirect_to root_path

  end

end



