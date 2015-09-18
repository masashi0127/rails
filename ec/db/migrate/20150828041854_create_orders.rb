class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.references :delivery_address, index: true, foreign_key: true
      t.integer :order_status_id, null: false
      t.text :remark, null: true

      t.timestamps
    end
  end
end
