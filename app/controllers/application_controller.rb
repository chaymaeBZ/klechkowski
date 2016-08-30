class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # make this helper avaible also into every controller. rails include helpers in views automatically
  include SessionsHelper


  before_filter :set_user_language

  def admin_user
      redirect_to root_url unless logged_in? && current_user.admin?
  end

  def logged_in_user
    unless logged_in? #if not logged in
      store_location
      flash[:danger] = "please log in first"
      redirect_to login_url
    end
  end

  rescue_from ActiveRecord::RecordNotFound do 
  	flash[:warning] = "Resource not found"
  	redirect_back_or root_path
  end

  private
    def set_user_language
      I18n.locale = 'ar'
    end
end
