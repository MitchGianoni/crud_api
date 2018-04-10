Rails.application.routes.draw do
  
  root to: "films#index"

  get "films/new", to: "films#new", as: "films_new"
  post "films", to: "films#create"

  get "films/:id/edit", to: "films#edit", as: "films_edit"
  put "films/:id/edit", to: "films#update"

  get "films/:id", to: "films#show", as: "films_show"
  delete "films.:id", to: "films#destroy"

end
