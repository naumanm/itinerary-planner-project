class HomepageController < ApplicationController
  def index
      redirect_to '/intineraries'
    else
      render :index 
  end
end
