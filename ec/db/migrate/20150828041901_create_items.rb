class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, limit: 50, null: false
      t.references :category, index: true, foreign_key: true
      t.integer :price_without_tax, default: 0, null: false
      t.integer :postage, default: 0, null: false

      t.timestamps
    end
  end
end
