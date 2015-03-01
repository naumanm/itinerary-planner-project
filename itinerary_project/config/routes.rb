Rails.application.routes.draw do

root 'index#hompage'

resources :itineraries do 
  res
  resources :itineraries, :has_many => :comments

  root 'access#login'

  get '/login', to: 'access#login', as: 'login'

  get '/signup', to: 'access#signup', as: 'signup'

  get '/main', to: 'access#main', as: 'main'

  post '/', to: 'authors#create'

end
