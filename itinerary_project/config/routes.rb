Rails.application.routes.draw do

root 'index#hompage'

resources :travelers do 
  resources :itineraries do 
    resources :destinations
    resources :travelers
  end
end

resources :itineraries, :has_many => :comments


end


