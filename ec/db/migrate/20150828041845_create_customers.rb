class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :name_r, null: false
      t.text :password, null: false
      t.references :customer_status, index: true, foreign_key: true
      t.references :delivery_address, index: true, foreign_key: true
      t.string :tel, null: false
      t.text :mail, null: true

      t.timestamps
    end
  end
end
