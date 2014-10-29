class CreateUserPages < ActiveRecord::Migration
  def change
    create_table :user_pages do |t|
      t.references :user, index: true
      t.references :page, index: true
      
      t.timestamps
    end
  end
end
