class Business < ActiveRecord::Base
  attr_accessible :contact_email, :name, :web_page
  has_many :album_roly_card
  belongs_to :user
end
