class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product
      t.integer :price
      t.string :desc

      t.timestamps
    end
  end
end
