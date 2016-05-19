ActiveAdmin.register Recipe do
	permit_params :recipes,  :preparation, :total_time, :servings,
	 :ingredients, :code, :image, :title, :calories		

index do

    column :title
    column :image


  end


end