 require_relative '../config/environment.rb'
 require 'tty-prompt'
 
class Controller
    attr_accessor :prompt, :guest

    def initialize()
        @prompt = TTY::Prompt.new
        
    end



    def welcome
        prompt.say('Hello there!! Welcome to Cosmos Travelers ! We travel all across the known Universe!
            
            ')
        sleep(1)
        prompt.say('Lets get started shall we....
                
                
                
        ')
        sleep(1)

     #     puts 'Who will be travling the stars today?'
        #     guest_name = gets.chomp

        # end



        # def welcome_with_name(guest_name)
        #     prompt.say("Thanks #{guests.name}, for choosing us for your interstellar travel needs!")

        prompt.say("Let's start traveling through the Cosmos!")
        prompt.select("LOGIN or NEW ACCOUNT?") do |menu|
            menu.choice "LOGIN", -> {Guest.existing_guests}
            menu.choice "NEW ACCOUNT", -> {Guest.new_guests}
            menu.choice "EXIT", -> {exit_program()}
        end
    end

    
    
    def main_menu
        system "clear"
        prompt.select("What do you want to do?") do |menu|
            menu.choice "Book my hotel!", -> {book_hotel}
            menu.choice "See my hotel", -> {my_hotels}
            menu.choice "See our available hotels", -> {all_hotels}
            menu.choice "See the Galaxies cuurently available"
            menu.choice "Back to Main Menu", -> {welcome}
        end
    end

    def all_hotels
        Hotel.all.map do |hotel|
        puts hotel.name
        end
        self.main
    end
end



def exit_program
    system "clear"
    prompt.say(" 
        
                'During our brief stay on Earth, we owe it to ourselfves and our descendants the\n 
        
                oppurtunity to explore. The day or knowledge of the Cosmos ceases\n

                to expand, we risk regressing to the childish view that the Universe\n 
                
                figuratively and literally revolves around us'\n\n

                    - Neil deGrasse Tyson\n
                    astrophysicist
        
        
        
                ")
    exit!
    
end
    # def available_locations
    # puts "Here's the Galaxies we're currently flying to!"
    
    # end

    # def check_in(date)
    # puts "When would like to travel?"


    # end

    # def check_out

    # end

    # def create_booking

    # puts "Are these the dates you would like or do you want to change?"
    # Y/N

    # end

    # def update_booking

    # end

    # def cancel_booking

    # end



#check_in
#check_out
#many_reservations

#reservation
#needs booking id
#rating

#I would like my user to search for a galaxy and it returns the hightest rated hotels 
# in that galaxy

#I would like my user to know when the best time to stay at hotel?

#I would like my user to be able to book dinner reservation at hotel...
#maybe at time of booking?

#as user I should be able to create, delete, and update a booking