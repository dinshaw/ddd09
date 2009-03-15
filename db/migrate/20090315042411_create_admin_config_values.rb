class CreateAdminConfigValues < ActiveRecord::Migration
  def self.up
    create_table :admin_config_values do |t|
      t.string :name
      t.string :value
      t.boolean :sys_var

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_config_values
  end
end
