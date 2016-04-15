class ChargesController < ApplicationController

	def new 


	end
	
	

	def create


      customer = Stripe::Customer.retrieve(current_user.stripeid)

token = params[:stripeToken]
      customer.source = token
      customer.save



	
	end
end



