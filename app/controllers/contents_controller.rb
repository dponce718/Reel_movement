class ContentsController < ApplicationController
	before_action :authenticate_user!
	before_action :suscribed_user!


	def show
		@program = Program.all
	end	


def create
	@user = current_user
	current_user.create_subscription(subscription_params)

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
