Rails.application.routes.draw do
  get 'users/index'
  get 'users/create'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :users do
        resources :posts
    end


  root 'posts#index'

end
