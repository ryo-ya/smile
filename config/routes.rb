Rails.application.routes.draw do
  root "home#top"
  get "/" => "home#top"
  post "/" => "home#top"
  get "profile" => "home#profile"
  get "activitys" => "home#activitys"
  get "engineer"  => "home#engineer"
  get "magician" => "home#magician"
  get "saxophone" => "home#saxophone"
  get "darts" => "home#darts"
  get "pokemon" => "home#pokemon"
  get "akiba" => "home#akiba"
  get "works2" => "home#works2"
  get "link" => "home#link"
  get "contact" => "contact#new"
  post "contact" => "contact#new"
  post 'contact/confirm' => "contact#confirm"
  post "contact/create" => "contact#create"
  get "contact/complete" => "contact#complete"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
