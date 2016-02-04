class RecipesController < ApplicationController

	def index
		Recipe.all
	end	
end
