Rails.application.routes.draw do



  
get 'home/index'
root 'home#index'
resources :users
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome', to: 'sessions#welcome', as: 'welcome'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  resources :users
  get 'book/add'
  get 'book/delete'
 
  get 'book/search'
  get 'book/save'
  get 'book/list'
  get 'book/new'
  get 'book/show'
  get 'first/login'
  get 'book/create'
  get 'book/destroy'
  get 'book/edit'




get 'display/hello'
get 'first/welcome'

#root 'first#welcome'
get "/first", to: "first#welcome"

match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
