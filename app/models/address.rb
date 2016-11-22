class Address < ActiveRecord::Base
    has_many :people
    has_many :addresses_people , through: :people
    
end
