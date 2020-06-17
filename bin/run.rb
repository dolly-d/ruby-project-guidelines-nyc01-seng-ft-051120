require_relative '../config/environment'
# require 'tty-prompt'



cli = Controller.new()
guest_instance = cli.welcome
cli.guest = guest_instance
cli.main_menu


until !guest_instance.nil?
    sleep 2
    system "clear"
end


# binding.pry





