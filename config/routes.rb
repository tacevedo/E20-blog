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
  get 'users/:id/edit', to: 'users#edit', as: 'edit'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy', as: 'delete'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
