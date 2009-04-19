class ChangeEmployerDateNames < ActiveRecord::Migration
  def self.up
    rename_column :employers, :from, :from_date
    rename_column :employers, :until, :until_date    
  end

  def self.down
    rename_column :employers, :from_date, :from
    rename_column :employers, :until_date, :until    
  end
end
