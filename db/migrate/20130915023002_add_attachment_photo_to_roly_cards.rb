class AddAttachmentPhotoToRolyCards < ActiveRecord::Migration
  def self.up
    change_table :roly_cards do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :roly_cards, :photo
  end
end
