class CreateEmployers < ActiveRecord::Migration
  def self.up
    create_table :employers do |t|
      t.string :company_name
      t.datetime :from
      t.datetime :until
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :employers
  end
end
