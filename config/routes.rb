Rails.application.routes.draw do
  get 'persons/profile' , as: 'user_root'
  devise_for :users
  resources :articles
  get 'category/:id', to: 'categories#get', as: 'category'
  get '/' , to: 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
