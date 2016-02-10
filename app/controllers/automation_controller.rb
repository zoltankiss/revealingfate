class AutomationController < ApplicationController
  def index
    authenticate_user
  end

  private
    def authenticate_user
      raise "not authenticated!" if current_user.email != "sinade.kai@gmail.com"
    end
end
