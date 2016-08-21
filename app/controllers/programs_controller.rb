class ProgramsController < ApplicationController
	before_action :authenticate_user!
	before_action :forgot_payment!
	before_action :no_assessment!
	
		
	

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
			   current_user.corrective_assessment.repetition == true
			   current_user.corrective_assessment.overhead == false

			   flash[:success] = "The excessive Squat with a forward lean program may be best for you!"  
			 redirect_to "/corrective_exercise"

	elsif		 

			   current_user.corrective_assessment.sitting == true   
			   current_user.corrective_assessment.dress_shoes == true
			   current_user.corrective_assessment.repetition == false
			   current_user.corrective_assessment.overhead == false

			   flash[:success] = "The Squats with knees moving inward program may be best for you!" 
			   redirect_to "/corrective_exercise" 

			   elsif		 

			   current_user.corrective_assessment.sitting == true   
			   current_user.corrective_assessment.dress_shoes == false
			   current_user.corrective_assessment.repetition == false
			   current_user.corrective_assessment.overhead == false

			  flash[:success] = "The excessive Squat with a forward lean program may be best for you!"  
			   redirect_to "/corrective_exercise" 

			    elsif		 

			   current_user.corrective_assessment.sitting == false   
			   current_user.corrective_assessment.dress_shoes == false
			   current_user.corrective_assessment.repetition == false
			   current_user.corrective_assessment.overhead == false

			  flash[:success] = "You seem pretty good look through the programs and see if you can find one to your liking"  
			   redirect_to "/corrective_exercise" 

			   elsif	

			    current_user.corrective_assessment.sitting == false   
			   current_user.corrective_assessment.dress_shoes == false
			   current_user.corrective_assessment.repetition == false
			   current_user.corrective_assessment.overhead == true

			  flash[:success] = "The Upper crossed syndrome program may be best for you!"  
			   redirect_to "/corrective_exercise"

			   elsif	

			    current_user.corrective_assessment.sitting == true   
			   current_user.corrective_assessment.dress_shoes == false
			   current_user.corrective_assessment.repetition == true
			   current_user.corrective_assessment.overhead == false

			  flash[:success] = "The Squat with knees moving inward program may be best for you!"  
			   redirect_to "/corrective_exercise"  

	else
			flash[:success] = "You seem pretty good look through the programs and see if you can find one to your liking"  
			   redirect_to "/corrective_exercise" 
		end		   
	end	

	def schedule
		
	end


	protected

def corrective_assessment_params
    		params.require(:corrective_assessment).permit(:sitting, :dress_shoes, :repetition, :recreation, :occupation, :overhead)
		end	

end
