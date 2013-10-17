class AlbumsController < ApplicationController


  def edit_album
    @album = Album.get_album(@user, params[:album_id])
    @rolies = Album.get_album_rolies(@album, @user)
    if (request.get?)
      @edit_album_form = EditAlbumForm.new(@album)
    else
      @edit_album_form = EditAlbumForm.new(params[:edit_album_form])
      @album.name = @edit_album_form.name
      @album.save
      redirect_to "/albums/view/"+@album.id.to_s
    end
  end
  
  def view_album
    @album = Album.get_album(@user, params[:album_id])
    @rolies = Album.get_album_rolies(@album, @user)
  end
  
  def add
    
  end
  
  def new
    if (request.get?)
    @new_album_form = NewAlbumForm.new
    else
    @album = Album.new
    @album.user = @user
    @new_album_form = NewAlbumForm.new(params[:new_album_form])
    @album.name = @new_album_form.name
    @album.save
    redirect_to "/albums/view/"+@album.id.to_s
    end
  end
  
  def show
     @albums = Album.get_albums(@user)
  end
  
  def favorite
    @rolies = UserRolyCard.get_favorites(@user)
    
  end
  
  def recent
    @rolies = UserRolyCard.get_recent(@user)
    
  end
  
  def recently_added
    @rolies = UserRolyCard.get_recently_added(@user)
    
  end
  
  def today
    @rolies = UserRolyCard.get_todays(@user)
    
  end

end
