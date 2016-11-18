class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :short_description
      t.text :long_description
      t.integer :price
      t.integer :image_id

      t.timestamps null: false
    end
  end
end
