class StaticPagesController < ApplicationController
	 include SubscriptionsHelper

  def home

  end

  def show

  end	


  def create
	current_user.build_subscription(subscription_params)

	respond_to do |format|
    format.js
    format.json { render json: current_user.to_json }
end

  end
	
	protected

	
		def subscription_params
    		params.require(:subscriptions).permit(:subscribed)
		end	
	

end
