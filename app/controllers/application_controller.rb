class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :login_required
  
  def login_required
    @user = User.find(1)
  end

  def login
  end
end
