class ContentsController < ApplicationController
	before_action :authenticate_user!
	before_action :suscribed_user!


	def show
		@program = Program.all
	end	

end
