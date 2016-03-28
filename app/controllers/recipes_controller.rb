class RecipesController < ApplicationController
	before_action :authenticate_user!
	before_action :forgot_subscription!
	before_action :forgot_payment!

	def index
		Recipe.all
	end	
end
