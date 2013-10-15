class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :login_required
  
  def login_required
    user_id = session[:user_id]
    if (user_id.nil?)
      user_id = 1
    end
    session[:user_id] = user_id
    @user = User.find(user_id)
  end

  def login
  end
end
