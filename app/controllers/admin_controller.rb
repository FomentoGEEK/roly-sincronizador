class AdminController < ApplicationController
  
  layout "admin"
  #, :only => [:action, :action], :except => [:action, :action]
  
  #before_filter :login_required, :except => [:login]
  
  def switch_user
    session[:user_id] = params[:user_id]
    redirect_to "/admin/account"
  end
  
  def search_preferences
  end

  def privacy_preferences
  end

  def account
  end

  def my_roly_cards
  end

  def my_albums
  end

  def my_favorites
  end

  def recieve_rcard
  end
  
  def app_info
  end
  
end
