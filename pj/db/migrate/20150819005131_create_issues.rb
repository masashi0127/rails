class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :body
      t.integer :status
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
