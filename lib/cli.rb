 require_relative '../config/environment.rb'
 require 'tty-prompt'
 
# class Interface
#     attr_accessor :prompt, :guests
    # def initialize

        @prompt = TTY::Prompt.new
        @guests = {}



    def welcome
        @prompt.say('Hello there!! Welcome to Cosmos Travelers ! We travel all across the known Universe!')
    end

    def ask_name
        @prompt.ask('To get started, tell me your name?', default: ENV['USER'])
    
    end

    def welcome_with_name(name)
        @prompt.say("Thanks #{@guests.name}, for choosing us for your interstellar travel needs!")
    end

    def account
        @prompt.say("Let's start traveling through the Cosmos!")
        @prompt.select("LOGIN or NEW ACCOUNT?") do |menu|
            menu.choice "LOGIN", -> {existing_guests()}
            menu.choice "NEW ACCOUNT", -> {new_guests()}
            menu.choice "EXIT", -> {exit_program()}
        end
    end

    def new_guests
        @prompt.say("Welcome, future traveler")
            guests_hash = @prompt.collect do 
            key(:name).ask("What is your name?")
            end
            guests_hash[:location] 
            @guests = Guests.create(guests_hash)
        end
    
    
    def existing_guests
        @prompt.say("Welcome back traveler! This means we're doing a great job!")
        guests_name = @prompt.ask("What is your name?")
        if Guests.find_by(name: guests_name) == nil
            @prompt.say("Sorry, we don't recognize you. Try CREATING A NEW ACCOUNT.")
            new_guests()
        else
            @guests = Guests.find_by(name: guests_name)
            @prompt.say ("Welcome back, #{@guests[:name]}. Nice to have you with us again")
        end
          main_menu()    
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