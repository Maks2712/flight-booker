class FlightsController < ApplicationController
  before_action :flight_params
  def index 
   
    @departure_airport = Airport.all.map{|a| [a.code, a.id]}
    @arrival_airport = Airport.all.map{ |a| [a.code, a.id] }
   @flights = Flight.where("departure_airport_id = ?", 
  params[:flight][:departure_airport_id]).where("arrival_airport_id = ?", 
  params[:flight][:arrival_airport_id])
  end
  
private

  
  def flight_params
    #params.require(:flight).permit(:flight_duration, :departure_airport_id, :arrival_airport_id, :start_date)
  params.permit(:flight_duration, :departure_airport_id, :arrival_airport_id, 
  :start_date, :flight, :flights)
  end

end