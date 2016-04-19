Rails.application.routes.draw do

	namespace :portfolio do
		resources :categories
		resources :items, path: '/'
	end

	resources :services
	resources :requests
	resources :faqs

	resources :pages
	resources :pages, path: '/', only: [:show]

	root 'static_pages#index'

end
