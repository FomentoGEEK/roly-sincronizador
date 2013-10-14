class AddDescriptionToRolyCard < ActiveRecord::Migration
  def change
    add_column :roly_cards, :description, :text
  end
end
