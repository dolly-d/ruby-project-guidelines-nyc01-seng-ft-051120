class Booking < ActiveRecord::Base
    belongs_to :guest
    belongs_to :hotel
end

#check_in
#check_out
#many_reservations

#reservation
#needs booking id
#rating