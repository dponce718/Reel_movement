class StripeMailer < ActionMailer::Base

  def new_member(customer)
   @customer = customer
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'Woo! Charge Succeeded!')
  end

  def welcome_email(customer)
    @customer = customer
    @user = User.find_by!(stripe_id: @customer.id)
    mail(to: @user.email, subject: "Thanks for purchasing)
  end
end