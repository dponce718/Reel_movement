class ChargesController < ApplicationController

	def new 
		raise foo
	end
	
	def update
		 token = params[:stripeToken]

		 customer = Stripe::customer.create(
		 	:card => token,
		 	:plan => "unlimited",
		 	:email => current_user.email
		 	)

		 current_user.stripeid = customer.id
		 current_user.save
	end	


	def create
		raise foo
	end
end
