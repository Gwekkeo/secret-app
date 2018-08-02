Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/create'
  # get 'static_pages/home'
	root 'static_pages#home'

	resources :users
end
