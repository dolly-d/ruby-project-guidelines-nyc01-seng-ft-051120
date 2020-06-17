class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :guest_id
      t.integer :hotel_id
      t.date :check_in
      t.date :check_out
    end
  end
end
