Rails.application.routes.draw do

  devise_for :users
	concern :sortable do
		collection do
			post :sort
		end
	end

	namespace :blog do
		resources :items, path: '/'
	end

	namespace :portfolio do
		resources :categories
		resources :items, path: '/'
	end

	resources :nav_items, concerns: [:sortable], except: [:show]
	resources :services
	resources :requests
	resources :faqs

	resources :pages
	resources :pages, path: '/', as: :root_page, only: [:show]

	root 'static_pages#index'

end
