class SubscriptionsController < ApplicationController
	before_action :authenticate_user!
	before_action :forgot_payment!
	before_action :no_assessment!, only: [:show]
	



	def index
		@program = Program.find_by_title("assessment")
	end	


	def new
	
	end	

	def assessment
		
	end

	def show
		
		
	end	

	def create

			
		 	
		 	current_user.create_assessment(assessment_params)
		 	
		

			if current_user.assessment.rhr.between?(80, 89)
			   current_user.assessment.push_ups <= 20  
			   current_user.assessment.planks <= 50
			   current_user.assessment.wall_sits <= 50 
			  
			   
				
			program = Program.find_by_title("General Conditioning")
			program.users << current_user
			flash[:success] = "Congratulations, the best program for you is General Conditioning"
			redirect_to "/subscriptions/show"

		elsif 
			   current_user.assessment.push_ups.between?(0,15)
			   current_user.assessment.planks.between?(0,50)
			   current_user.assessment.wall_sits.between?(0,50)
		

			   program = Program.find_by_title("Core Conditioning")
			   program.users << current_user
			flash[:success] = "Welcome to the program that best suits your needs"
			redirect_to "/subscriptions/show"
				

		elsif current_user.assessment.rhr >= 85
			   current_user.assessment.push_ups >= 22  
			   current_user.assessment.planks.between?(60,89)
			   current_user.assessment.wall_sits.between?(60,89) 
			   current_user.assessment.hamstring <= 2

			 program = Program.find_by_title("Cardiovascular Training")
			  program.users << current_user
			flash[:success] = "Its time to get moving lets do it"
			redirect_to "/subscriptions/show"


			elsif current_user.assessment.rhr.between?(65, 79)
			   current_user.assessment.push_ups.between?(23,35)
			   current_user.assessment.planks >= 90 
			   current_user.assessment.wall_sits >= 90 
			   current_user.assessment.hamstring >= 2

			 program = Program.find_by_title("General Conditioning 2")
			  program.users << current_user
			flash[:success] = "Welcome to the program that best suits your needs"
			redirect_to "/subscriptions/show"


			elsif current_user.assessment.rhr <= 68
			   current_user.assessment.push_ups.between?(36,45)
			   current_user.assessment.planks >= 100 
			   current_user.assessment.wall_sits >= 100 
			   current_user.assessment.hamstring == 3
			
			program = Program.find_by_title("General Conditioning 3")
			 program.users << current_user
			flash[:success] = "This is going to be tough but you can handle it"
			redirect_to "/subscriptions/show"
			
			elsif current_user.assessment.rhr <= 75
			   current_user.assessment.push_ups.between?(30,45)
			   current_user.assessment.planks >= 100 
			   current_user.assessment.wall_sits >= 100 
			   current_user.assessment.hamstring >= 2

			  program = Program.find_by_title("Resistance Training")
			  program.users << current_user
			flash[:success] = "Welcome to the program that best suits your needs" 
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
