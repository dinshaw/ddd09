class CreateCmsPages < ActiveRecord::Migration
  def self.up
    create_table :cms_pages do |t|
      t.string :reference_string
      t.string :title
      t.string :sub_title
      t.text :body
      t.text :meta_keyword
      t.text :meta_description
      t.integer :position
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cms_pages
  end
end
