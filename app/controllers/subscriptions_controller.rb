class SubscriptionsController < ApplicationController
	before_action :authenticate_user!
	



	def index
		@program = Program.find_by_title("assessment")
	end	


	def new
	
	end	

	def show
		
		
	end	

	def create

		 	
		 	current_user.create_assessment(assessment_params)
		 	
		

			if current_user.assessment.rhr.between?(80, 89)
			   current_user.assessment.push_ups <= 20  
			   current_user.assessment.planks <= 50
			   current_user.assessment.wall_sits <= 50 
			   current_user.assessment.hamstring <= 2 
			   
				
			current_user.program = Program.find_by_title("General Conditioning")
			flash[:success] = "Welcome to the program that best suits your needs"
			redirect_to "/subscriptions/show"

		elsif current_user.assessment.rhr.between?(75,79)
			   current_user.assessment.push_ups.between?(0,15)
			   current_user.assessment.planks.between?(0,50)
			   current_user.assessment.wall_sits.between?(0,50)
			   current_user.assessment.hamstring <= 2 

			   current_user.program = Program.find_by_title("Core Conditioning")
			flash[:success] = "Welcome to the program that best suits your needs"
			redirect_to "/subscriptions/show"
				

		elsif current_user.assessment.rhr >= 90
			   current_user.assessment.push_ups >= 22  
			   current_user.assessment.planks.between?(60,89)
			   current_user.assessment.wall_sits.between?(60,89) 
			   current_user.assessment.hamstring <= 2

			 current_user.program = Program.find_by_title("Cardiovascular Training")
			flash[:success] = "yay!"
			redirect_to "/subscriptions/show"


			elsif current_user.assessment.rhr.between?(65, 74)
			   current_user.assessment.push_ups.between?(23,35)
			   current_user.assessment.planks >= 90 
			   current_user.assessment.wall_sits >= 90 
			   current_user.assessment.hamstring >= 2

			 current_user.program = Program.find_by_title("tomatoes")
			flash[:success] = "yay!"
			redirect_to "/subscriptions/show"


			elsif current_user.assessment.rhr.between?(61, 64)
			   current_user.assessment.push_ups.between?(36,45)
			   current_user.assessment.planks >= 100 
			   current_user.assessment.wall_sits >= 100 
			   current_user.assessment.hamstring >= 2

			 current_user.program = Program.find_by_title("Boiling rice")
			flash[:success] = "yay!"
			redirect_to "/subscriptions/show"
			
			elsif current_user.assessment.rhr <= 60
			   current_user.assessment.push_ups.between?(36,45)
			   current_user.assessment.planks >= 100 
			   current_user.assessment.wall_sits >= 100 
			   current_user.assessment.hamstring >= 2

			 current_user.program = Program.find_by_title("Resistance Training")
			flash[:success] = "yay!" 
			redirect_to "/subscriptions/show"
			

			else
				flash[:danger] = "failed!"
				render "/subscriptions"
			
		end	
		
	end	



	protected

		def assessment_params
    		params.require(:assessment).permit(:rhr, :push_ups, :wall_sits, :planks, :hamstring)
		end	

		
		
end
