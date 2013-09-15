class RolyController < ApplicationController
  
  before_filter :login_required, :except => [:login]

  
  def home
    @rolies = Album.get_rolies(nil,10)
  end

  def search
  end

  def detail
    @roly = RolyCard.find(params[:roly_id])
  end

  def map
  end
end
