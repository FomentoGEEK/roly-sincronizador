class Business < ActiveRecord::Base
  attr_accessible :contact_email, :name, :web_page
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_many :album_roly_card
  belongs_to :user
end
