class AddPrivacyParameterToRolyCard < ActiveRecord::Migration
  def change
    add_column :roly_cards, :privacy, :integer
  end
end
