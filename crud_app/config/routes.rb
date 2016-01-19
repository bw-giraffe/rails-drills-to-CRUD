Rails.application.routes.draw do
  get '/meats', to: "meats#index"

  get '/meats/:id', to: "meats#show"
end
