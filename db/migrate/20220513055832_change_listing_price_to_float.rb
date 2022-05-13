class ChangeListingPriceToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :listings, :price, :float
  end
end
