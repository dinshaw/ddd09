class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.text :teaser
      t.text :description
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.integer :position
      t.integer :parent_id, :null => false ,:default => 0
      t.boolean :featured
      t.datetime :featured_on

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
