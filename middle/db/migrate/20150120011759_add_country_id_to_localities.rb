class AddCountryIdToLocalities < ActiveRecord::Migration
  def change
    add_reference :localities, :country, index: true
  end
end
