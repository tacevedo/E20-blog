Rails.application.routes.draw do

  get 'users/index'

	resources :posts do
		resources :comments, only: [:create, :destroy]
	end

	devise_for :users, controllers: {
		sessions: 'users/sessions',
		registrations: 'users/registrations'
	}

	root 'posts#index'

	get '/users',   to: 'users#index'
  # get '/users',   to: 'users#destroy'
  # get '/users',   to: 'users#edit'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
