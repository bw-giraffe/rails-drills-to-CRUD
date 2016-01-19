Rails.application.routes.draw do
  root to: "users#index"  
  # get 'sessions/new'
  get "/users", to: "users#index", as: "users"

  # get 'sessions/create'
  get "/users/new", to: "users#new", as: "new_user"

  post "/users", to: "users#create"
  # get 'articles/index'
  get "/users/:id", to: "users#show", as: "user"

  # get 'articles/show'
  get "/login", to: "sessions#new"

  # get 'articles/new'
  post "/sessions", to: "sessions#create"

  # get 'articles/create'
  get "/logout", to: "sessions#destroy"


  # get 'articles/update'

  # get 'articles/edit'

  # get 'articles/destroy'

  # get 'users/create'

  # get 'users/index'

  # get 'users/show'

  # get 'users/update'

  # get 'users/destroy'

  # get 'users/new'

  # get 'users/edit'

end
