Rails.application.routes.draw do
  get 'artists/index'
  get 'artists/show'
  get 'artists/edit'
  get 'artists/new'
  get 'songs/index'
  get 'songs/show'
  get 'songs/edit'
  get 'songs/new'
  get 'billboards/index'
  get 'billboards/show'
  get 'billboards/edit'
  get 'billboards/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
