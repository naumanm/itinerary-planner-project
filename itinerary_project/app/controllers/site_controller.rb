class SiteController < ApplicationController
  def index
  	@travelers = Traveler.all
  end

	def create
  traveler = Traveler.new traveler_params
  	if traveler.save
  		session[:traveler_id] = traveler.id
  		redirect_to home_path, notice: "Successfully created"
  	else
  		render :signup
  	end
  end


  def login

  end

  def attempt_login
  	if params[:username].present? && params[:password].present?
      found_traveler = Traveler.where(username: params[:username]).first
      if found_traveler
        authorized_traveler = found_traveler.authenticate(params[:password])
        	if authorized_traveler
						render :home, notice: "You've succesfully logged in!"
						else
						redirect_to login_path, notice: "Your password is invalid"
      		end
      		else
      		redirect_to login_path, notice: "Your username is invalid"
   		end
  	end
  end

  def logout
  	session[:traveler_id] = nil
  	render :logout
  end
 

  def new
  end

  private
  def traveler_params
  	params.require(:traveler).permit(:username, :first_name, :last_name, :password, :password_digest)
  end

  def prevent_login_signup
  	if session[:traveler_id]
  		redirect_to home_path
  	end
  end

end
