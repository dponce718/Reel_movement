class SubscriptionsController < ApplicationController
	before_action :authenticate_user!
	before_action :suscribed_user!, only: [:show]



	def index
		@program = Program.find_by_title("assessment")
	end	


	def create
		@user = current_user
		@user.update(suscription: "unlimited")
		@user.save
	end	

	def show
		@program = Program.find_by_title("group workout")
	end	




end
