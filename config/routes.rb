Rails.application.routes.draw do

	namespace :blog do
		resources :items, path: '/'
	end

	namespace :portfolio do
		resources :categories
		resources :items, path: '/'
	end

	resources :services
	resources :requests
	resources :faqs

	resources :pages
	resources :pages, path: '/', as: :root_page, only: [:show]

	root 'static_pages#index'

end
