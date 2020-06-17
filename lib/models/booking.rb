class Booking < ActiveRecord::Base
    belongs_to :guests
    belongs_to :hotels


    def book_hotel
    puts 'View the Cosmos and vacation in it!'
    puts 'When would you like to travel?'

    check_in = gets.chomp
    puts "Great! #{check_in} is a great time to venture through the Universe"

    puts 'When would you like to return?'
    check_out = gets.chomp
    puts "If only you could stay forever, but #{check_out} is great day to return!"
    return Booking.create(guest_id: self, hotel_id: self, check_in: check_in, check_out: check_out)

    system "clear"

    end

    def my_hotels
        puts "Here's your currently booked hotels!"
            Hotel.all.select {|booking_id| hotel_id.guest == self} 
        
    
    end
   
end