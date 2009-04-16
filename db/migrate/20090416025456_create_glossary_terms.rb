class CreateGlossaryTerms < ActiveRecord::Migration
  def self.up
    create_table :glossary_terms do |t|
      t.string :term
      t.text :definition
      t.integer :position
      t.integer :parent_id
      t.boolean :common

      t.timestamps
    end
  end

  def self.down
    drop_table :glossary_terms
  end
end
