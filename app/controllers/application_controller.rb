class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # make this helper avaible also into every controller. rails include helpers in views automatically
  include SessionsHelper
end
