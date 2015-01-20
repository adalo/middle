class AddCountryToLocalities < ActiveRecord::Migration
  def change
    add_column :localities, :country, :string
  end
end
