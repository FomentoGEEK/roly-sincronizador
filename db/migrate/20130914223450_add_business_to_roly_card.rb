class AddBusinessToRolyCard < ActiveRecord::Migration
  def change
    add_column :roly_cards, :business_id, :integer
  end
end
