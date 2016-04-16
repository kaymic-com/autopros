Rails.application.routes.draw do

	resources :services
	resources :requests
	resources :faqs

	root 'static_pages#index'

end
