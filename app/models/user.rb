class User < ActiveRecord::Base
  has_one :subscription
  has_one :assessment
  has_one :corrective_assessment
  belongs_to :program

   accepts_nested_attributes_for :program
   accepts_nested_attributes_for :corrective_assessment

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i


  validates_presence_of :name
  validates_length_of   :name, maximum: 50 

  validates :password, length: { minimum: 8 }, unless: "password.nil?"
  validates :password, presence: true, if: "id.nil?"
  validates_confirmation_of :password     


  validates :email, presence: true, length: { maximum: 250 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


after_create :subscribe_user_to_mailing_list


 def self.without_assessment
    includes(:assessment).where(assessments: {user_id: nil})
  end
  

  private
 
  def subscribe_user_to_mailing_list
    SubscribeUserToMailingListJob.perform_later(self)
  end

  def role?(r)
  role.include? r.to_s
end


 def send_failed_charge(user)
    UserMailer.failed_charge(self).deliver
  end





  

      
end
