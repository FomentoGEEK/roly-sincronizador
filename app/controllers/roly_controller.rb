class RolyController < ApplicationController
  layout "application"
  #, :only => [:action, :action], :except => [:action, :action]

  before_filter :login_required, :except => [:login]
  def qrcode
    respond_to do |format|
      format.html
      format.svg  { render :qrcode => params[:url], :level => :l, :unit => 5 }
      format.png  { render :qrcode => params[:url] }
      format.gif  { render :qrcode => params[:url] }
      format.jpeg { render :qrcode => params[:url] }
    end
  end

  def album_add

  end

  def home
    @rolies = Album.get_rolies(@user,10)
  end

  def search
  end

  def detail
    @roly = RolyCard.find(params[:roly_id])
  end

  def map
  end
  
  def get_card
    
  end
  
  def share
    @roly = RolyCard.findByIdUser(params[:roly_id], @user)
  end
  
  def card_by_code
    
  end
    
end
