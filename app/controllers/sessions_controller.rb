class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
      if user.activated?
    		log_in user
    		params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    		redirect_back_or conversations_path
      else
        message = t :account_not_activated
        flash[:warning] = message
        redirect_to root_url
      end
  	else
  		flash.now[:danger] = t :email_or_password_invalid
  		render 'new'
  	end
  	
  end

  def destroy
  	log_out if logged_in?
  	redirect_to root_url #we can use root_path as well
  end

end
