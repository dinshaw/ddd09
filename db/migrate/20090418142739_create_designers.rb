class CreateDesigners < ActiveRecord::Migration
  def self.up
    create_table :designers do |t|
      t.string :name
      t.string :company_name
      t.integer :price_point
      t.string :url
      t.text :description
      t.string :phone
      t.string :email
      t.string :resume_file_name
      t.integer :resume_file_size
      t.string :resume_content_type
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :designers
  end
end
