class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip_code
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
