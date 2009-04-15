class AddPathToPage < ActiveRecord::Migration
  def self.up
    add_column :cms_pages, :path, :string
  end

  def self.down
    remove_column :cms_pages, :path    
  end
end
