class AddTodaysToUserRolyCard < ActiveRecord::Migration
  def change
    add_column :user_roly_cards, :todays, :integer
  end
end
