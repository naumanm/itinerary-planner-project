class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit]

  def edit
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new destination_params
    if @destination.save
      #redirect_to traveler_itinerary_destinations_path
      redirect_to itineraries_path
    else
      render :new
    end
  end

  def show
    @destinations = Destination.all
  end

  private
    def set_destination
      @destination = Destination.find_by_id(params[:id])
    end

    def destination_params
      params.require(:destination).permit(:place, :name, :start_date, :return_date)
    end

end
