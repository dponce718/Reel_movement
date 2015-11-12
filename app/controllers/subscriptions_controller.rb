class SubscriptionsController < ApplicationController
	before_action :authenticate_user!
	before_action :suscribed_user!, only: [:show, :index]



	def index
		@program = Program.find_by_title("assessment")
	end	


	def new
		current_user.toggle(:suscription)
		current_user.save
	end	

	def show
		@program = Program.find_by_title("group workout")
	end	

	def create
		 	
		 	current_user.create_assessment(assessment_params)

			if current_user.assessment.push_ups < 22
				
			current_user.program = Program.find_by_title("core")
			flash[:success] = "yay!"
			redirect_to "/subscriptions/show"
			else
				#flash[:danger] = "failed!"
				#render "/subscriptions"

			current_user.program = Program.find_by_title("assessment")
			flash[:success] = "yay!"
			redirect_to "/subscriptions/show"
		end	
		
	end	



	protected

		def assessment_params
    		params.require(:assessment).permit(:rhr, :push_ups, :wall_sits, :planks, :hamstring)
		end	
end
