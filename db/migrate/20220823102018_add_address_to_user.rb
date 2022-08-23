class AddAddressToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :pin, :string
  end
end
