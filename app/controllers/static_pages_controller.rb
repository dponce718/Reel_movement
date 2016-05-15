class StaticPagesController < ApplicationController
	before_action :authenticate_user!, only: [:stripe, :forgot_subscription]

  def home

  end

  def video

   end 

  
  def privacy_policy
  		
  end	

  def terms

  end	

  def stripe

  end
  
  def forgot_subscription

  end  


  def create

	current_user.create_subscription(subscription_params)

	 respond_to do |format|
      format.html 
      format.json { render json: @current_user }

  end
	
  end

	
	protected

	
		def subscription_params
    		params.require(:subscription).permit(:subscribed)
		end	
	

end
