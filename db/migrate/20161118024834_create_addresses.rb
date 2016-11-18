class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :postcode
      t.string :state_province
      t.string :country

      t.timestamps null: false
    end
  end
end
