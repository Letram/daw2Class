Rails.application.routes.draw do
  resources :origamis
  resources :favorigamis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'origamis#acerca'
  get 'acerca' => 'origamis#acerca'
  get 'origamis/:id/favourite' => 'origamis#favourite_management', as: :origamis_favourite
end
