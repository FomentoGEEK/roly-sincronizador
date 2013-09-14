class AlbumRolyCard < ActiveRecord::Base
  attr_accessible :favorite, :notes, :tags
  has_one :roly_card
  belongs_to :album
end
