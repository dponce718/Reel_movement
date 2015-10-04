class SubscriptionsController < ApplicationController
	before_action :authenticate_user!

	def index
		@program = Program.find_by_title("assessment")
	end	


	def new

	end	

	def show
		@program = Program.find_by_title("group workout")
	end	

end
