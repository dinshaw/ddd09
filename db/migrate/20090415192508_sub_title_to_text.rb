class SubTitleToText < ActiveRecord::Migration
  def self.up
    change_column :cms_pages, :sub_title, :text
  end

  def self.down
    change_column :cms_pages, :sub_title, :string    
  end
end
