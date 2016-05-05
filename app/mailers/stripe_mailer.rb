class StripeMailer < ActionMailer::Base

  #def new_member(user)
#   @user = user
#    mail(to: 'daniel.ponce@reelmovement.com', subject: 'Woo! Charge Succeeded!')
#  end#

#  def welcome_email(user)
#    @user = user
#    mail to: user.email, subject: "Account activation"
#  end
#end



 def admin_dispute_created(charge)
    @charge = charge
    @sale = Sale.find_by(stripe_id: @charge.id)
    if @sale
      mail(to: 'you@example.com', subject: "Dispute created on charge #{@sale.guid} (#{charge.id})").deliver
    end
  end
end
