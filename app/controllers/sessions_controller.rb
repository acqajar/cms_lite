class SessionsController < ApplicationController
	# establish a session based on a USER logging in. Not a session.
  def new
  	@user = User.new
    if params[:user_created] == "true"
      @user_created_message = "successfully signed in!"
    end
  end

  def create
  	# raise params.inspect 
  	# Find the user by email
  	# go to users table, select stuff from users email is equal to 
  	u = User.where(email: params[:user][:email]).first
	  	if u != nil && u.authenticate(params[:user][:password])
	  		session["user_id"] = @user.id.to_s
	  		# raise u.inspect
        redirect_to user_path(u)
      else 
        redirect_to new_user_path
	  end
	end

  def destroy
  	session.destroy 
    redirect_to root_path
  end

end
