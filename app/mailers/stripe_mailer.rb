class StripeMailer < ActionMailer::Base
  default from: "info@reelmovement.com"

  def new_member(user)
     @user = user
    mail(to:  @user.email, subject: 'Welcome to Reel Movement')
  end


  def welcome_email(user)
     @user = user
    mail(to: @user.email, subject: "Thanks for purchasing")
  end

 def failed_charge(user)
     @user = user
    mail(to: @user.email, subject: 'failed payment')
  end

  def updated_info(user)
  	@user = user
    mail(to: @user.email, subject: 'Thanks for updating your infomation')
  end

  def user_deleted(user)

  	@user = user
    mail(to: @user.email, subject: 'failed payment')
  	
  end

  def dispute(user)
  	@user = user
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'oh no we are having some problems')
  end

  def dispute_updated(user)
  	@user = user
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'dispute updated')
  end

  def funds_reinstated(user)
  	@user = user
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'Woo! you got your money back')
  end

  def funds_withdrawn(user)
  	@user = user
    mail(to: 'daniel.ponce@reelmovement.com', subject: ':( looks like we lost this one')
  end

  def dispute_closed(user)
  	@user = user
    mail(to: 'daniel.ponce@reelmovement.com', subject: 'dispute is closed brother')
  end
end

