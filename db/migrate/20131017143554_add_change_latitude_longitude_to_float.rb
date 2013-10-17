class AddChangeLatitudeLongitudeToFloat < ActiveRecord::Migration
  def self.up
    change_table :roly_cards do |t|
      t.change :latitude, :float
      t.change :longitude, :float
    end
  end
 
  def self.down
    change_table :roly_cards do |t|
      t.change :latitude, :integer
      t.change :longitude, :integer
    end
  end
end
