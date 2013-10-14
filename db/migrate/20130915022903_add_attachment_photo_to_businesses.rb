class AddAttachmentPhotoToBusinesses < ActiveRecord::Migration
  def self.up
    change_table :businesses do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :businesses, :photo
  end
end
