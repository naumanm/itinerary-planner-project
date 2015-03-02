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

#  Prefix Verb   URI Pattern                                                                       Controller#Action
#                                root GET    /                                                                                 index#hompage
#     traveler_itinerary_destinations GET    /travelers/:traveler_id/itineraries/:itinerary_id/destinations(.:format)          destinations#index
#                                     POST   /travelers/:traveler_id/itineraries/:itinerary_id/destinations(.:format)          destinations#create
#  new_traveler_itinerary_destination GET    /travelers/:traveler_id/itineraries/:itinerary_id/destinations/new(.:format)      destinations#new
# edit_traveler_itinerary_destination GET    /travelers/:traveler_id/itineraries/:itinerary_id/destinations/:id/edit(.:format) destinations#edit
#      traveler_itinerary_destination GET    /travelers/:traveler_id/itineraries/:itinerary_id/destinations/:id(.:format)      destinations#show
#                                     PATCH  /travelers/:traveler_id/itineraries/:itinerary_id/destinations/:id(.:format)      destinations#update
#                                     PUT    /travelers/:traveler_id/itineraries/:itinerary_id/destinations/:id(.:format)      destinations#update
#                                     DELETE /travelers/:traveler_id/itineraries/:itinerary_id/destinations/:id(.:format)      destinations#destroy
#        traveler_itinerary_travelers GET    /travelers/:traveler_id/itineraries/:itinerary_id/travelers(.:format)             travelers#index
#                                     POST   /travelers/:traveler_id/itineraries/:itinerary_id/travelers(.:format)             travelers#create
#     new_traveler_itinerary_traveler GET    /travelers/:traveler_id/itineraries/:itinerary_id/travelers/new(.:format)         travelers#new
#    edit_traveler_itinerary_traveler GET    /travelers/:traveler_id/itineraries/:itinerary_id/travelers/:id/edit(.:format)    travelers#edit
#         traveler_itinerary_traveler GET    /travelers/:traveler_id/itineraries/:itinerary_id/travelers/:id(.:format)         travelers#show
#                                     PATCH  /travelers/:traveler_id/itineraries/:itinerary_id/travelers/:id(.:format)         travelers#update
#                                     PUT    /travelers/:traveler_id/itineraries/:itinerary_id/travelers/:id(.:format)         travelers#update
#                                     DELETE /travelers/:traveler_id/itineraries/:itinerary_id/travelers/:id(.:format)         travelers#destroy
#                traveler_itineraries GET    /travelers/:traveler_id/itineraries(.:format)                                     itineraries#index
#                                     POST   /travelers/:traveler_id/itineraries(.:format)                                     itineraries#create
#              new_traveler_itinerary GET    /travelers/:traveler_id/itineraries/new(.:format)                                 itineraries#new
#             edit_traveler_itinerary GET    /travelers/:traveler_id/itineraries/:id/edit(.:format)                            itineraries#edit
#                  traveler_itinerary GET    /travelers/:traveler_id/itineraries/:id(.:format)                                 itineraries#show
#                                     PATCH  /travelers/:traveler_id/itineraries/:id(.:format)                                 itineraries#update
#                                     PUT    /travelers/:traveler_id/itineraries/:id(.:format)                                 itineraries#update
#                                     DELETE /travelers/:traveler_id/itineraries/:id(.:format)                                 itineraries#destroy
#                           travelers GET    /travelers(.:format)                                                              travelers#index
#                                     POST   /travelers(.:format)                                                              travelers#create
#                        new_traveler GET    /travelers/new(.:format)                                                          travelers#new
#                       edit_traveler GET    /travelers/:id/edit(.:format)                                                     travelers#edit
#                            traveler GET    /travelers/:id(.:format)                                                          travelers#show
#                                     PATCH  /travelers/:id(.:format)                                                          travelers#update
#                                     PUT    /travelers/:id(.:format)                                                          travelers#update
#                                     DELETE /travelers/:id(.:format)                                                          travelers#destroy
#                         itineraries GET    /itineraries(.:format)                                                            itineraries#index {:has_many=>:comments}
#                                     POST   /itineraries(.:format)                                                            itineraries#create {:has_many=>:comments}
#                       new_itinerary GET    /itineraries/new(.:format)                                                        itineraries#new {:has_many=>:comments}
#                      edit_itinerary GET    /itineraries/:id/edit(.:format)                                                   itineraries#edit {:has_many=>:comments}
#                           itinerary GET    /itineraries/:id(.:format)                                                        itineraries#show {:has_many=>:comments}
#                                     PATCH  /itineraries/:id(.:format)                                                        itineraries#update {:has_many=>:comments}
#                                     PUT    /itineraries/:id(.:format)                                                        itineraries#update {:has_many=>:comments}
#                                     DELETE /itineraries/:id(.:format)                                                        itineraries#destroy {:has_many=>:comments}

