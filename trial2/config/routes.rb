Rails.application.routes.draw do
  root to: "users#index"  
  # get 'sessions/new'
  get "/users", to: "users#index", as: "users"

  # get 'sessions/create'
  get "/users/new", to: "users#new", as: "new_user"

  post "/users", to: "users#create"
  # get 'articles/index'

  # get 'articles/show'

  # get 'articles/new'

  # get 'articles/create'

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
