class ItinerariesController < ApplicationController
  before_action :find_intinerary, only: [:show, :edit, :update, :destroy]
  
  def index
    @tineraries = Intinerary.all
  end

  def create
    Intinerary.create itinerary_params
    redirect_to itineraries_path
  end

  def show
    @destinations = Destination.all - @itinerary.destinations
    @travelers = Travelers.all - @itinerary.travelers
  end

  def edit
  end

  def update
    @itinerary.update_attributes 
  end 

  def new
    @itinerary = Intinerary.new
  end

  def destroy
    @intinerary.destroy
  end

  def add_destination
    destination = Destination.find destination_params[:id]
    unless @intinerary.destination.include? destination
      @itinerary.destinations << destination
    end
    redirect_to @itinerary
  end

  def add_traveler
    traveler = Traveler.find traveler_params[:id]
    unless @itinerary.traveler.include? traveler
      @itinerary.travelers << traveler
    end
    redirect_to @itinerary
  end

  def remove_destination
    @itinerary.destination.delete(Destination.find params[:destination_id])
    redirect_to @itinerary
  end

  def remove_traveler
    @itinerary.traveler.delete(Traveler.find params[:traveler_id])
    redirect_to @itinerary
  end

  private 
  def find_itinerary
    @itinerary = Intinerary.find params[:id]
  end

  def itinerary_params
    params.require(:itinerary).permit(:destination_id, :traveler_id, d)
  end

  def destination_params
    params.require(:destination).permit(:place)
  end

  def traveler_params
    params.require(:traveler).permit(:first_name, :last_name)
  end
end
