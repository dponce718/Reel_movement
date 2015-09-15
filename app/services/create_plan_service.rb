class CreatePlanService

  def call

  	p = Plan.create({
      name: 'unlimited program',
      price: 14.99,
      interval: 'month',
      stripe_id: 'unlimited',
      features: ['10 Projects', '10 Pages', '10 Users', '10 Organizations'].join("\n\n"),
      display_order: 1
    })

 	p.save!(:validate => false)

   end 


   
end




