class AddShareParametersToRolyCard < ActiveRecord::Migration
  def change
    add_column :roly_cards, :share_code, :string
    add_column :roly_cards, :share_date, :datetime
  end
end
