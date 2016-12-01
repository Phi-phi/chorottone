Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'medias#index'
  get 'medias/destroy' => "medias#destroy", as: 'destroy_media'
  resources :medias
end
