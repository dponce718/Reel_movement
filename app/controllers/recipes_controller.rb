class RecipesController < ApplicationController
	before_action :forgot_subscription

	def index
		Recipe.all
	end	
end
