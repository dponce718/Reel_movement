class UserMailer < ApplicationMailer
  default from: "info@reelmovement.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_member.subject
  #
  def new_member(user)
    @user = user
    
    mail(to: "daniel.ponce@reelmovement.com", subject: 'Welcome to Reel Movement')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(user)
    @user = user
    
    mail(:to => @user.email, :subject => 'Welcome')    
  end

  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.failed_charge.subject
  #
  def failed_charge(user)

    @user = user
    mail to: @user.receipt_email, subject: 'Payment to Reel Movement Failed'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer._updated_info.subject
  #
  def updated_info(user)
    @user = user
    @greeting = "Hi"

    mail to: @user.email, subject: 'Thanks for updating your information'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_deleted.subject
  #
  def user_deleted(user)
    @user = user
    @greeting = "Hi"

    mail to: @user.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.dispute.subject
  #
  def dispute(user)
    @user = user
    @greeting = "Hi"

     mail(to: "daniel.ponce@reelmovement.com", subject: 'Welcome to Reel Movement')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.dispute_updated.subject
  #
  def dispute_updated(user)
    @user = user
    @greeting = "Hi"

    mail(to: "daniel.ponce@reelmovement.com", subject: 'Welcome to Reel Movement')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.funds_reinstated.subject
  #
  def funds_reinstated(user)
    @user = user
    @greeting = "Hi"

     mail(to: "daniel.ponce@reelmovement.com", subject: 'Welcome to Reel Movement')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.funds_withdrawn.subject
  #
  def funds_withdrawn(user)
    @user = user
    @greeting = "Hi"

    mail(to: "daniel.ponce@reelmovement.com", subject: 'Welcome to Reel Movement')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.dispute_closed.subject
  #
  def dispute_closed(user)
    @user = user
    @greeting = "Hi"

    mail(to: "daniel.ponce@reelmovement.com", subject: 'Welcome to Reel Movement')
  end
end
