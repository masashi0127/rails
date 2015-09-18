class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, limit: 50, null: false
      t.string :code, limit: 50, null: false
      t.references :category, index: true, foreign_key: true
      t.integer :hierarchy, null: false

      t.timestamps
    end
  end
end
