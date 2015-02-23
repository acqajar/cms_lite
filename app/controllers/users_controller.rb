class UsersController < ApplicationController
	
	def index
		@users = User.all
	end


	def new
	  	# Create a user
	  	@user = User.new
  	end


	def create
  	# parameters define creation of user
  	@user = User.new(user_parameters)
	  	if @user.save
		  	# handle successful save
		  	# notify user for successful save
		  	session["user_id"] = @user.id.to_s
			redirect_to templates_path
		else
	  		render 'new'
	  	end
  end


	def show
	  	# find user by id to show said user
	  	@user = User.find(params[:id]) 
 	end



private 
	# create private method that user can't use but referenced 
	#in method of user creation
	def user_parameters
		params.require(:user).permit(:email,:image, :password, :password_confirmation)
	end

end


