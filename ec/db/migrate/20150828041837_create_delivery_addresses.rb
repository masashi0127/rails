class CreateDeliveryAddresses < ActiveRecord::Migration
  def change
    create_table :delivery_addresses do |t|
      t.integer :classification, null: false
      t.string :zip, null: false
      t.references :prefecture, index: true, foreign_key: true
      t.string :address, null: false

      t.timestamps
    end
  end
end
