class ProgramsController < ApplicationController

	def index
		@program = Program.all
	end	

	def create
		@program = Program.find_by(id: params[:id])
		@program.save!
		current_user.program = @program
		current_user.program.save!
		redirect_to "/subscriptions/show"

	end	



end
