class CreateAlbumRolyCards < ActiveRecord::Migration
  def change
    create_table :album_roly_cards do |t|
      t.string :notes
      t.integer :favorite
      t.string :tags

      t.timestamps
    end
  end
end
