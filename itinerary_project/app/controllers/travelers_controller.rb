class TravelersController < ApplicationController
  before_action :find_traveler, only: [:edit, :update, :destroy]

  def index
    
  end

  def create
    Traveler.create traveler_params
    redirect_to 
  end 

  def show
    @travelers = Traveler.all
  end

  def new
    @traveler = Traveler.new
  end

  def edit
  end

  def update
    @traveler.update_attributes traveler_params
    redirect_to 
  end 

  def destroy
    @traveler.destroy
    redirect_to
  end

  private 
  def traveler_params 
    params.require(:traveler).permit(:first_name, :last_name, :email)
  end

  def find_traveler
    @traveler = Traveler.find(params[:id])
  end
end
