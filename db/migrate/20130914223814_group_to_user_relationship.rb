class GroupToUserRelationship < ActiveRecord::Migration
  def change
    create_table :group_user do |t|
      t.belongs_to :user
      t.belongs_to :group
      t.timestamps
    end
  end
end
