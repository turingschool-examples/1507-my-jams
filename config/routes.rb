Rails.application.routes.draw do
  resources :songs, param: :slug
end
