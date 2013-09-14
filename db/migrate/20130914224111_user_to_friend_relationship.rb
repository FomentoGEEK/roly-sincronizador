class UserToFriendRelationship < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.belongs_to :user
      t.belongs_to :user
      t.timestamps
    end
  end
end
