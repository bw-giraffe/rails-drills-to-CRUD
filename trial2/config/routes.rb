Rails.application.routes.draw do
  root to: "users#index"  
 
  get "/users", to: "users#index", as: "users"

  # get 'sessions/create'
  get "/users/new", to: "users#new", as: "new_user"

  post "/users", to: "users#create"

  get "/users/:id", to: "users#show", as: "user"


  get "/login", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/logout", to: "sessions#destroy"

  get "/articles", to: "articles#index"

  get "/articles/new", to: "articles#new", as: "new_article"
  
  get "/articles/:id", to: "articles#show"

  post "/articles/create", to: "articles#create"

  get "/articles/:id/edit", to: "articles#edit"

  patch "/articles/:id/update", to: "articles#update", as: "article"

  delete "/articles/:id", to: "articles#destroy"

  # get 'articles/index'
  # get 'sessions/new'
  # get 'articles/create'
  # get 'sessions/create'
  # get 'articles/show'
  # get 'articles/new'

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
