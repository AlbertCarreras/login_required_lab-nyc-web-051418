Rails.application.routes.draw do

  root "sessions#index"
  post '/' => "sessions#destroy"
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  get '/secret' => "secrets#show"
  post '/secret' => "sessions#destroy"

end
