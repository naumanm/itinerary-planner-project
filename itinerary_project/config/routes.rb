Rails.application.routes.draw do

root 'index#hompage'

resources :itineraries do 
  resources :travelers
  resources :destinations
end

resources :itineraries, :has_many => :comments


end
