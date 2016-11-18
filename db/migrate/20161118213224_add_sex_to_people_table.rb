# mikemunevar:~/workspace (master) $ bundle exec rails generate migration add_sex_to_people_table
# Running via Spring preloader in process 18915
#       invoke  active_record
#       create    db/migrate/20161118213224_add_sex_to_people_table.rb
# mikemunevar:~/workspace (master) $

class AddSexToPeopleTable < ActiveRecord::Migration
  def change
    add_column(:people, :sex, :string)
  end
end
