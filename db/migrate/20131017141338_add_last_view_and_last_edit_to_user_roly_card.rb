class AddLastViewAndLastEditToUserRolyCard < ActiveRecord::Migration
  def change
    add_column :user_roly_cards, :last_viewed, :datetime
    add_column :user_roly_cards, :last_edited, :datetime
  end
end
