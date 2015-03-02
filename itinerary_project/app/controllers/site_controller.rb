class SiteController < ApplicationController
  def index
  	@traveler = Traveler.all
  end


  def attempt_login
  	
  end


  def new
  end
end
