class RolyCard < ActiveRecord::Base
  attr_accessible :address, :email, :facebook, :facebook_likes, :foursquare, :foursquare_checkins, :google, :google_circles, :latitude, :longitude, :telephone, :title, :twitter, :twitter_tweets, :web_page
end
