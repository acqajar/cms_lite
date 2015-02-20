class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	u = User.where(id: session["user_id"]).first
  	if u == nil && session["user_id"] != nil
  		session.destroy
  	end
  	u
  end

end
