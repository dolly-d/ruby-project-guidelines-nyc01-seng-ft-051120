class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :planet
      t.string :location
      t.string :weather
      t.string :restaurant
    end 
  end
end
