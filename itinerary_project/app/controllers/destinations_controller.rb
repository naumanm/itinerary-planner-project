class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit]

  def edit
  end

  def new
    @destination = Destination.new
  end

  def show
    @destinations = Destination.all
  end

  private
    def set_destination
      @destination = Destination.find_by_id(params[:id])
    end

    def destination_params
      params.require(:destination).permit(:place, :start_date, :return_date)
    end

end
