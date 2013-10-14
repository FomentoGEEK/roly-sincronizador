class AddUserToRolyCard < ActiveRecord::Migration
  def change
    add_column :roly_cards, :user_id, :integer
  end
end
