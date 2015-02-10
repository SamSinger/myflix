Myflix::Application.routes.draw do
	root to: 'categories#index'
	get	'/home', to: 'categories#index'	
  get 'ui(/:action)', controller: 'ui'
  resources :videos
  resources :categories
end
