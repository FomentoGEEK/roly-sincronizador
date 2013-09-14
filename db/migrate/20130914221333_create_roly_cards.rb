class CreateRolyCards < ActiveRecord::Migration
  def change
    create_table :roly_cards do |t|
      t.string :title
      t.string :web_page
      t.string :facebook
      t.string :twitter
      t.integer :facebook_likes
      t.integer :twitter_tweets
      t.string :google
      t.string :google_circles
      t.string :foursquare
      t.integer :foursquare_checkins
      t.integer :latitude
      t.integer :longitude
      t.string :address
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
