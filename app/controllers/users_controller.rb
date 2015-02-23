class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	
	def index
		@users = User.all
	end

	def update
    respond_to do |format|
      if @user.update(user_parameters)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
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
		params.require(:user).permit(:name, :email, :image, :password, :password_confirmation, :avatar)
	end

	def set_user
      @user = User.find(params[:id])
    end

end


