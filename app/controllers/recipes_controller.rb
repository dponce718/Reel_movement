class RecipesController < ApplicationController
	before_action :authenticate_user!
	before_action :forgot_payment!
	before_action :no_assessment!

	def index
		Recipe.all
	end	
end
