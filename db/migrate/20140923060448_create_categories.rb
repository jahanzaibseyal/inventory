class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_type

      t.timestamps
    end
  end
end
