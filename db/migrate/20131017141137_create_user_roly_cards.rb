class CreateUserRolyCards < ActiveRecord::Migration
  def change
    create_table :user_roly_cards do |t|
      t.string :notes
      t.integer :favorite
      t.string :tags

      t.timestamps
    end
  end
end
