class UsersController < ApplicationController


	def check_email
  @user = User.find_by_email(params[:user][:email])

  respond_to do |format|
  format.json { render :json => !@user }
  end
end


def update



 current_user.program = Program.find_by_title(params[:user][:programs][:title])

 	if current_user.program.save!
  		redirect_to "/subscriptions/show"
  	else
  		render :show
	end
end


end
