class AddLastViewAndEditToAlbumRolyCard < ActiveRecord::Migration
  def change
    add_column :album_roly_cards, :last_viewed, :datetime
    add_column :album_roly_cards, :last_edited, :datetime
  end
end
