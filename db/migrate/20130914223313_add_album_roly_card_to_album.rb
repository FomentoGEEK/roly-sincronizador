class AddAlbumRolyCardToAlbum < ActiveRecord::Migration
  def change
    add_column :album_roly_cards, :album_id, :integer
    add_column :album_roly_cards, :roly_card_id, :integer
  end
end
