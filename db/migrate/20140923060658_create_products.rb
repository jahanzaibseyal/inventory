class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :unit_price
      t.integer :quantity
      t.string :ISBN
      t.references :category

      t.timestamps
    end
  end
end
