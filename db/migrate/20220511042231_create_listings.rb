class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
