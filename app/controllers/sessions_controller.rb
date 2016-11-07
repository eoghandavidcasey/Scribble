class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_name(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.user_id
  		redirect_to user

  	else
  		flash.now[:error] = "invalid email/password combination."
  		render 'new'
  end

  def destroy
  	if signed_in?
  		session[:user_id] = null
  	else
  		flash[:notice] = "You need to log in first"
  	end
  	redirect_to login_path
  end

  
end
