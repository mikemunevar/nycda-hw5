class Person < ActiveRecord::Base
    has_many :addresses
    has_many :addresses_people , through: :addresses
    
end



# models/movie.rb
# class Movie < ActiveRecord::Base
#   has_many :showtimes
#   has_many :theatres, through: :showtimes
# end