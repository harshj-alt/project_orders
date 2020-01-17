class ChangeTableNameOfOrderTables < ActiveRecord::Migration[5.2]
  def change
    rename_table :order_tables, :line_items
  end
end
