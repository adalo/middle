class AddNameToLocalities < ActiveRecord::Migration
  def change
    add_column :localities, :name, :string
  end
end
