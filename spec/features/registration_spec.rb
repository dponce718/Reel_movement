require 'rails_helper'
require 'factory_girl'

	describe "signing up" do 
		it "allows user to sign up to reel movement and creates an object in the database" do
			expect(User.count).to eq(0) 

			visit "/"
			expect(page).to have_content "Sign up"
			click_link "Sign up"

			find("input[placeholder='Your Name']").set "daniel"
			find("input[placeholder='Your Email']").set "batman@yahoo.com"
			find("input[placeholder='Your Password (8 characters minimum)']").set "batman1234"
			find("input[placeholder='Password Confirmation']").set "batman1234"
			click_button "Sign up"

			expect(User.count).to eq(1) 
			expect(page).to have_content "Welcome! You have signed up successfully "

			

		end	

		it "allows user to suscribe successfully" do

			visit "/"
			click_link "Sign up"

			find("input[placeholder='Your Name']").set "daniel"
			find("input[placeholder='Your Email']").set "batman@yahoo.com"
			find("input[placeholder='Your Password (8 characters minimum)']").set "batman1234"
			find("input[placeholder='Password Confirmation']").set "batman1234"
			click_button "Sign up"

			find("input[placeholder='Name']").set "daniel"
			find("input[placeholder='Email']").set "batman@yahoo.com"
			check('Unlimited Plan - $14.99/month ')	

		end


	end		

	describe "failed suscription" do	
		
		

		it "stops users from accessing content is not suscribed" do

			visit "/"
			click_link "Sign up"

			find("input[placeholder='Your Name']").set "daniel"
			find("input[placeholder='Your Email']").set "batman@yahoo.com"
			find("input[placeholder='Your Password (8 characters minimum)']").set "batman1234"
			find("input[placeholder='Password Confirmation']").set "batman1234"
			click_button "Sign up"


			visit "/subscriptions"
			expect(page).to have_content "Please suscribe!"


		end	

	end	