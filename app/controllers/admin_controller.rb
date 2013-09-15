class AdminController < ApplicationController
  
  before_filter :login_required, :except => [:login]
  
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
