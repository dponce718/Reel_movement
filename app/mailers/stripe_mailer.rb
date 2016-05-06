class StripeMailer < ActionMailer::Base
  default from: "info@reelmovement.com"

  def new_member(user)
     @user = user
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'Woo! Charge Succeeded!')
  end



  def welcome_email(user)
     @user = user
    mail(to: @user.email, subject: "Thanks for purchasing")
  end

  def failed_charge(user)
  	  @user = user
  	mail(to: @user.email, subject: " Payment to Reel Movement failed")
  end
  
end

