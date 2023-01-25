class Airport < ApplicationRecord
    has_many :departing_flights, foreign_key: :departure_airport_id, inverse_of: 'departure_airport'
    has_many :arrival_flights, foreign_key: :arrival_airport_id, inverse_of: 'arrival_airport'
   # accepts_nested_attributes_for :flights
end
