class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :login_required

  def login
  end
end
