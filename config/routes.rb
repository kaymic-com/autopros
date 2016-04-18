Rails.application.routes.draw do

	namespace :portfolio do
		resources :categories
		resources :items, path: '/'
	end

	resources :services
	resources :requests
	resources :faqs

	root 'static_pages#index'

end
