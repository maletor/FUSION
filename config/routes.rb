Fusion::Application.routes.draw do
  resources :passwords

  resources :cards

  resources :employees

  resources :clients do
    resources :projects
  end


  resources :images do
    resources :drawings
    resources :annotations
  end


  resources :invitations

  resources :projects do
    resources :tasks
    resources :milestones
    resources :images
  end

  resources :milestones do
    resources :tasks
  end

  resources :tasks do 
    resources :comments
  end

  match 'signup' => 'users#new', :as => :signup
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'login' => 'sessions#new', :as => :login
  resources :sessions

  resources :users do
    resource :password
  end

  resource :dashboard

  root :to => 'dashboards#show'
end
