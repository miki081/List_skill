Rails.application.routes.draw do

  get 'onlines/new'
  get 'reviews/index'
  get 'reviews/show'
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords'
  }

 namespace :admins do
 root 'homes#top'
  resources :users, only: [:show, :edit, :update, :index]
  resources :genres, except: [:show, :new, :destroy]
  resources :recipes,except: [:destroy]
  resources :events, except: [:index, :show]
  resources :events, except: [:destroy]
end


root 'homes#top'
get :concept, to: 'users/about#concept'
get :contact, to: 'users/about#contact'
get :news, to: 'users/about#news'
get 'comment/new'
get '/users/:id/withdrow' => 'users#withdrow', as: 'withdrow_user' 
patch '/users/:id/withdrow' => 'users#switch', as: 'withdrow_switch_user'

resources :home_users, only: [:index]
resources :users, only: [:show, :edit, :update, :confirm, :update, :index]
resources :recipes, only:  [:index, :show, :update, :destroy, :create, :new, :edit] 
resources :events, only:  [:index, :show, :destroy, :update, :create, :new, :edit]
resources :recipes, only: [:index, :show]
resources :onlines, only: [:index, :show, :destroy, :update, :create, :new, :edit]
resources :recipes, only: [:index, :show] do
 resource :likes, only: [:create, :destroy]
resources :comments, only: [:create]
end
resources :genres, only: [:index] do
resources :recipes, only: [:index]
end
resources :genres, only: [:index] do
resources :events, only: [:index]
  
end
resources :genres, only: [:index] do
resources :onlines, only: [:index]
end
end

