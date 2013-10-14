class AlbumRolyCard < ActiveRecord::Base
  attr_accessible :favorite, :notes, :tags, :last_viewed, :last_edited
  has_one :roly_card
  belongs_to :album
end
