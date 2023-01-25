# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.create(name: "Domodedovo", code: "DMD")
Airport.create(name: "Vnukovo", code: "VNK")
Airport.create(name: "Tolmachevo", code: "TLM")  
Flight.create(flight_duration: '20:00', departure_airport_id: 1, arrival_airport_id: 2, start_datetime: '20/01/2023')
Flight.create(flight_duration: "2:00", departure_airport_id: 2, arrival_airport_id: 3, start_datetime: '21/02/2023')
Flight.create(flight_duration: "5:00", departure_airport_id: 3, arrival_airport_id: 1, start_datetime: '22/03/2023')