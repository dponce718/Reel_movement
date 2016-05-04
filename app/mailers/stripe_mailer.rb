class StripeMailer < ActionMailer::Base

  def new_member(customer)
    @user = User.find_by_email!(params[:email])
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'Woo! Charge Succeeded!')
  end

  def welcome_email(customer)
    @user = User.find_by_email!(params[:email])
    mail(to: @user.email, subject: "Thanks for purchasing")
  end
end