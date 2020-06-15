class Guest < ActiveRecord::Base
    has_many :hotels
    has_many :bookings, through: :hotels 

    

end

#I would like my user to search for a galaxy and it returns the hightest rated hotels 
# in that galaxy

#I would like my user to know when the best time to stay at hotel?

#I would like my user to be able to book dinner reservation at hotel...
#maybe at time of booking?

#as user I should be able to create, delete, and update a booking