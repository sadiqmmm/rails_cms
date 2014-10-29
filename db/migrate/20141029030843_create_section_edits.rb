class CreateSectionEdits < ActiveRecord::Migration
  def change
    create_table :section_edits do |t|
      t.references :user, index: true
      t.references :section	, index: true
      t.string :summary
      	
      t.timestamps
    end
  end
end
