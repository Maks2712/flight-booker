class FlightsController < ApplicationController
  #before_action :flight_params
  def index 
    #@flights=Flight.all
    @departure_airport = Airport.all.map{|a| [a.code, a.id]}
    @arrival_airport = Airport.all.map{ |a| [ a.code, a.id ] }
    @flight_date = Flight.all.map{ |a| [ a.start_datetime, a.id ] }
   @flights = Flight.where("arrival_airport_id = ? AND departure_airport_id = ?", params[:flight][:arrival_airport_id],params[:flight][:departure_airport_id])
  end
  
private
  def event_date_formatted
    event_date.strftime("%m/%d/%Y") 
  end
  def flight_params
    params.require(:flight).permit(:flight_duration, :departure_airport_id, :arrival_airport_id, :start_date)
  end
end