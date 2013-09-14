class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :web_page
      t.string :contact_email

      t.timestamps
    end
  end
end
