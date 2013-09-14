class Album < ActiveRecord::Base
  attr_accessible :description, :name, :privacy_setting, :status
  has_many :album_roly_card
  belongs_to :user
end
