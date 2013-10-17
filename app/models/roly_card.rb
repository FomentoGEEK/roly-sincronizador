class RolyCard < ActiveRecord::Base
  attr_accessible :address, :email, :description, :share_code, :share_date, :privacy, :facebook, :facebook_likes, :foursquare, :foursquare_checkins, :google, :google_circles, :latitude, :longitude, :telephone, :title, :twitter, :twitter_tweets, :web_page, :photo
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  belongs_to :business
  belongs_to :user
  
  def self.findByUser(user)
    RolyCard.where(user_id: user)
  end
  
  def self.findByIdUser(id, user)
    RolyCard.where(user_id: user, id: id).first
  end
  
end
