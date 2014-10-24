class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.integer :permalink, index: true
      t.integer :position
      t.boolean :visible, default: false
      t.references :subject, index: true

      t.timestamps
    end
  end
end
