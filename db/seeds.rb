guest1 = Guest.create(name:'Laurie', location: 'Florida')
guest2 = Guest.create(name:"Kat", location: "Los Angelos")
guest3 = Guest.create(name: "Patty", location: "Brooklyn")


hotel1 = Hotel.create(name: "The Blue Lagoon", planet: "Fhloston Paradise", location: "Andromeda", weather: "High of 99, low of 85", restaurant: "The Mermaid Inn", price: 500)
hotel2 = Hotel.create(name: "The Lightening Tower", planet: "Valhalla", location: "Asgard", weather: "High of 75, low of 65", restaurant: "Loki's Tavern", price: 600)
hotel3 = Hotel.create(name: "Hometree", planet: "Pandora", location:  "Messier 81", weather: "High of 110, low of 100", restaurant: "Fig", price: 800)
hotel4 = Hotel.create(name: "Junglehouse", planet: "Antila", location: "Vanaheim", weather: "High of 65, low 0f 45", restaurant: "Gourmet Garden", price: 1000)
hotel5 = Hotel.create(name: "The Camila", planet: "Proxima", location: "Alpha Centuri", weather: "High of 85, low of 80", restaurant: "Chew", price: 1200)
hotel6 = Hotel.create(name: "Linden House", planet: "Saturn", location: "Milky Way", weather: "High 25, low of -15", restaurant: "Fisherman's Cove", price: 1400)

booking1 = Booking.create(guest_id: guest1.id, hotel_id: hotel1.id)
booking2 = Booking.create(guest_id: guest2.id, hotel_id: hotel1.id)
booking3 = Booking.create(guest_id: guest3.id, hotel_id: hotel2.id)
booking4 = Booking.create(guest_id: guest3.id, hotel_id: hotel1.id)
booking5 = Booking.create(guest_id: guest1.id, hotel_id: hotel6.id)
booking6 = Booking.create(guest_id: guest1.id, hotel_id: hotel1.id)
booking7 = Booking.create(guest_id: guest2.id, hotel_id: hotel3.id)
booking8 = Booking.create(guest_id: guest3.id, hotel_id: hotel4.id)