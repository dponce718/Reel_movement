# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/new_member
  def new_member
    UserMailer.new_member
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome_email
  def welcome_email
    UserMailer.welcome_email
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/failed_charge
  def failed_charge
    UserMailer.failed_charge
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/_updated_info
  def _updated_info
    UserMailer._updated_info
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/user_deleted
  def user_deleted
    UserMailer.user_deleted
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/dispute
  def dispute
    UserMailer.dispute
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/dispute_updated
  def dispute_updated
    UserMailer.dispute_updated
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/funds_reinstated
  def funds_reinstated
    UserMailer.funds_reinstated
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/funds_withdrawn
  def funds_withdrawn
    UserMailer.funds_withdrawn
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/dispute_closed
  def dispute_closed
    UserMailer.dispute_closed
  end

end
