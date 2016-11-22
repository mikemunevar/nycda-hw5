# mikemunevar:~/workspace (master) $ rails generate migration create_addresses_and_people_join_table
# Running via Spring preloader in process 5445
#       invoke  active_record
#       create    db/migrate/20161119234220_create_addresses_and_people_join_table.rb
# mikemunevar:~/workspace (master) $ 

class CreateAddressesAndPeopleJoinTable < ActiveRecord::Migration
  def change
    create_table :addresses_people do |t|
      t.integer   :address_id
      t.integer   :person_id
    end
  end
end
