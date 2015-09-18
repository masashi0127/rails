class EditStatusDefaultValueOfIssues < ActiveRecord::Migration
  def change
    change_column_default :issues, :status, 0
  end
end
