Rails.application.routes.draw do
  devise_for :users
  root 'billboards#index'
 


resources :billboards do
  resources :songs
end


resources :songs do 
  resources :artists
end

# resources :songs do 
#   resources :billboard
# end

# resources :songs do 
#   get :billboard_id
# end


end
