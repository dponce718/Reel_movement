class ContentsController < ApplicationController
	before_action :authenticate_user!
	before_action :suscribed_user!


	def show
		@program = Program.all
	end	


def create
	current_user.create_subscription(subscription_params)


  end
	
	protected

	
		def subscription_params
    		params.require(:subscription).permit(:subscribed)
		end	
end
