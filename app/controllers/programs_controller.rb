class ProgramsController < ApplicationController
	before_action :authenticate_user!
	before_action :forgot_subscription!
	before_action :forgot_payment!
	
		
	

	def index
		@program = Program.all
	end	

	def show

	end	

	def create
	
	current_user.create_corrective_assessment(corrective_assessment_params)

	if 
			   current_user.corrective_assessment.sitting == true   
			   current_user.corrective_assessment.dress_shoes == true

			   flash[:success] = "yay!"  
			 redirect_to "/corrective_exercise"

	else
			redirect_to "/"
		end		   
	end	

	def schedule
		
	end


	protected

def corrective_assessment_params
    		params.require(:corrective_assessment).permit(:sitting, :dress_shoes, :repetition, :recreation, :occupation)
		end	

end
