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




end
