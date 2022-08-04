class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :product
      t.integer :price
      # t.references :users, foreign_key: true

      t.timestamps
    end
    # add_index :orders, :id
    #Ex:- add_index("admin_users", "username")
  end
end
