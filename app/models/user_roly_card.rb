class UserRolyCard < ActiveRecord::Base
  attr_accessible :favorite, :notes, :tags, :last_viewed, :last_edited
  belongs_to :roly_card
  belongs_to :user
end
