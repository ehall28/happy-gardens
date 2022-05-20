class AddDefaultValueToColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :listings, :status, :string, default: 'available'
    
    rename_column :listings, :type, :listing_type
    change_column :listings, :listing_type, :string, default: 'plant'
  end
end
