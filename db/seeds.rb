
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'




Region.destroy_all

def load_regions_from_csv
  csv_options = { col_sep: ',', quote_char: '"', headers: :first_row, header_converters: :symbol }
  file_path = 'tourism_regions.csv'
  CSV.foreach(file_path, csv_options) do |row|
    # puts "#{row[:state]}: #{row[:region]}"
    Region.create!(name: row[:region], state: row[:state])
  end
end

load_regions_from_csv

puts "#{Region.count} regions loaded"

User.destroy_all

def seed_users
  for x in (0..10) do 
    Traveller.create!(first_name: "Jerome#{x}", last_name: "
      Dingus#{x}", email: "testtraveller#{x}@test.com", password: "123456")
    VenueAdmin.create!(first_name: "Peter#{x}", last_name: "Doofus#{x}", email: "testadmin#{x}@test.com", password: "123456")
  end
end

seed_users

puts "#{Traveller.count} travellers created"
puts "#{VenueAdmin.count} venue admins created"
puts "#{User.count} total users created"
puts 'Done!'

# Venue.destroy_all

# def seed_venues
#   Venue.create!(name: "Stones", region: Region.last, venue_admin_id = )
# end














