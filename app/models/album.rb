class Album < ActiveRecord::Base
  attr_accessible :description, :name, :privacy_setting, :status
  has_many :album_roly_card
  belongs_to :user

  def self.get_album(user, id)
    @album = Album.where("albums.id = ? AND albums.user_id = ?", id, user).first
  end

  # gets user albums
  def self.get_albums(user)
    @albums = Album.where("albums.user_id = ?", user)
  end

  # gets limit amount of rolies belonging to user
  def self.get_album_rolies(album, user)
    RolyCard.joins("LEFT JOIN album_roly_cards ON album_roly_cards.roly_card_id = roly_cards.id LEFT JOIN albums ON albums.id = album_roly_cards.album_id").where("albums.id = ? AND albums.user_id = ?", album, user)
  end

  # gets limit amount of rolies belonging to user
  def self.get_rolies(user, limit)
    RolyCard.joins("LEFT JOIN album_roly_cards ON album_roly_cards.roly_card_id = roly_cards.id LEFT JOIN albums ON albums.id = album_roly_cards.album_id").where("albums.user_id = ?", user)
  end
  
  def self.get_recent_rolies(user, limit)
    #AlbumRolyCard.
  end
  

  def self.get_todays(user, limit)

  end

  def self.get_recent(user, limit)

  end

  def self.get_favorites(user, limit)

  end

end
