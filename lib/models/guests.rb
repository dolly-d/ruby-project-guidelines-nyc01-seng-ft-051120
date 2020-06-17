class Guest < ActiveRecord::Base
    has_many :hotels
    has_many :bookings, through: :hotels 

    def self.new_guests
        system "clear" 
        puts 'Hello future traveler!!'
        puts 'What is your name?'
        guest_name = gets.chomp

        puts "Welcome #{guest_name}! Let's get you booked!"
        return Guest.create(name: guest_name)       
    end


    def self.existing_guests
        system "clear" 
        puts "Welcome back traveler! This means we're doing a great job!"
        puts "What is your name?"
        guest_name = gets.chomp

        if Guest.find_by(name: guest_name) == nil
            puts "Sorry, we don't recognize you. Try CREATING A NEW ACCOUNT."
            new_guests()
        else
            puts "Welcome back, #{guest_name}. Nice to have you with us again"
            return Guest.find_by(name: guest_name)
        end
        # main_menu
    end

   
end

#I would like my user to search for a galaxy and it returns the hightest rated hotels 
# in that galaxy

#I would like my user to know when the best time to stay at hotel?

#I would like my user to be able to book dinner reservation at hotel...
#maybe at time of booking?

#as user I should be able to create, delete, and update a booking