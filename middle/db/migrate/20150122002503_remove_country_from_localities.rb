class RemoveCountryFromLocalities < ActiveRecord::Migration
  def change
    remove_column :localities, :country
  end
end