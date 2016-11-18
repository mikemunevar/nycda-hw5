class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.boolean :seller
      t.boolean :buyer
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
