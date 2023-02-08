class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: 'Airport', foreign_key: :departure_airport_id
    belongs_to :arrival_airport, class_name: 'Airport', foreign_key: :arrival_airport_id
   
    #accepts_nested_attributes_for :airports
    #https://womenwhocode.medium.com/adding-a-basic-search-form-in-rails-91782996c3f0
=begin
    def self.search(search)
        if search
            flight=Flight.find_by(name: search)
            if flight
                self.where(flight_id: flight)
            else
                @flights=Flight.all
            end
        else
            @flights=Flight.all
    end 
end
=end
end
