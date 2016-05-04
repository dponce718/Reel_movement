class StripeMailer < ActionMailer::Base

  def new_member(current_user)
    current_user.email
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'Woo! Charge Succeeded!')
  end

  def welcome_email(current_user)
    current_user.email
    mail(to: current_user.email, subject: "Thanks for purchasing")
  end
end