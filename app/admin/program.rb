ActiveAdmin.register Program do
	permit_params :user_id, :title, :level, :code_one,
    :code_two, :code_three, :code_four, :code_five,
	 :frame, :schedule, :style,	:start_time, :description, :title_one		

index do

    column :level
    column :title
    column :description


  end


end
