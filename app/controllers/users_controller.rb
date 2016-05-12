class UsersController < ApplicationController


	def check_email
  @user = User.find_by_email(params[:user][:email])

  respond_to do |format|
  format.json { render :json => !@user }
  end
end


def update



 program = Program.find_by_title(params[:user][:programs][:title])

 program.users << current_user
 	if current_user.program.save!
  		redirect_to "/subscriptions/show"
  	else
  		render :show
	end
end


end
