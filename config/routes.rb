Rails.application.routes.draw do

get "/pages/:page" => "pages#show"

resources :users
resource :session, only: [:new, :create, :destroy]
resources :bands
resources :albums
resources :tracks
root 'pages#home'
end
