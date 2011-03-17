Picturesque::Application.routes.draw do
  resources :spot_finders

  root :to => "spots#index"

  resources :spots
  resources :paintings do
    resources :comments
  end
end
