class AddAddressToLocalities < ActiveRecord::Migration
  def change
    add_column :localities, :address, :string
  end
end
