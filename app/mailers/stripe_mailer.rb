class StripeMailer < ActionMailer::Base

  def new_member(user)
     @user = user
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'Woo! Charge Succeeded!')
  end



  def welcome_email(user)
     @user = user
    mail(to: @user.email, subject: "Thanks for purchasing")
  end
end

