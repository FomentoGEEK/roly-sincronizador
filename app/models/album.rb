class Album < ActiveRecord::Base
  attr_accessible :description, :name, :privacy_setting, :status
  has_many :album_roly_card
  belongs_to :user
  
  # gets user albums
  def self.get_albums(user)
    RolyCard.all  
  end
  
  # gets limit amount of rolies belonging to user
  def self.get_rolies(user, limit)
    RolyCard.all
  end
  
  
end
