class UsersController < ApplicationController

	def show

	end	
	

	def check_email
  @user = User.find_by_email(params[:user][:email])

  respond_to do |format|
  format.json { render :json => !@user }
  end
end

def update

#current_user.program = Program.where(title: params[:title])
	
 


 #@user = current_user
#@program = @user.program.find_by_id(params[:id])

current_user.program = Program.find(params[:id])

 current_user.program = Program.find_by_title(params[:title])
    

  redirect_to "/subscriptions/show"
end



	protected
	def program_params
    		params.require(:program).permit(:title)
		end	
end
