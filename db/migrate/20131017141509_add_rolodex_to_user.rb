class AddRolodexToUser < ActiveRecord::Migration
  def change
    add_column :user_roly_cards, :user_id, :integer
    add_column :user_roly_cards, :roly_card_id, :integer
  end
end
