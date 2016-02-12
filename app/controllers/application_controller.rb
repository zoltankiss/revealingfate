class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  USERS = ['tatweiyeap@gmail.com', 'sinade.kai@gmail.com', 'zoltan.a.kiss@gmail.com']

  def authenticate_user
    if current_user.nil? || !USERS.include?(current_user.email)
      flash[:alert] = "you are not authenticated to view that page!"
      redirect_to root_path
      return
    end
  end
end
