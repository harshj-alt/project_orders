class CreateLineitems < ActiveRecord::Migration[5.2]
  def change
    create_table :lineitems do |t|
      t.integer :quantity
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
