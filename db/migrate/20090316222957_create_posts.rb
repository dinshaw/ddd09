class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :reference_string
      t.string :title
      t.text :sub_title
      t.text :body
      t.text :meta_description
      t.text :meta_keyword
      t.integer :position
      t.integer :parent_id, :default => 0
      t.boolean :allow_comments, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
