class SubscribeUserToMailingListJob < ActiveJob::Base
  queue_as :default

  def perform(user)
    gibbon = Gibbon::API.new
    gibbon.lists.subscribe({:id => ENV["MAILCHIMP_lIST_ID"], :email => {:email => user.email}, :double_optin => false})
  end
end
 

 

