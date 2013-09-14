class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :status
      t.integer :permissions

      t.timestamps
    end
  end
end
