FactoryGirl.define do
  factory :user do
    	name "Daniel"
   			sequence :email do |n| 
      			"user#{n}@example.com"
    		end
     	
			password "password"
			password_confirmation "password" 
			suscription false
  end    
end