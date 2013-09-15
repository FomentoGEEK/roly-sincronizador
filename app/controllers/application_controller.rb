class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  def login_required
    @user = User.find(1)
  end

  def login
  end
end
