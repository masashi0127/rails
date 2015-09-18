class CreateCustomerStatuses < ActiveRecord::Migration
  def change
    create_table :customer_statuses do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
