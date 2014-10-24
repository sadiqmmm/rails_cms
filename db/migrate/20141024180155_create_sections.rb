class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :position
      t.boolean :visible, default: false
      t.string :content_type
      t.text :context
      t.references :page, index: true

      t.timestamps
    end
  end
end
