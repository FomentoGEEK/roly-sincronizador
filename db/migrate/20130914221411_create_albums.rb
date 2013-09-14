class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :description
      t.string :status
      t.string :privacy_setting

      t.timestamps
    end
  end
end
