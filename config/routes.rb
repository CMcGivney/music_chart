Rails.application.routes.draw do
root 'billboards#index'

resources :billboards do 
  resources :song
end
resources :artists do 
  resources :songs
end
end
