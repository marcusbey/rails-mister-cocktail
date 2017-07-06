Rails.application.routes.draw do

  get "cocktails", to: "cocktails#index"

  get 'cocktails/new', to: "cocktails#new"

  get 'cocktails/:id', to: "cocktails#show"

  post 'cocktails/create', to: "cocktails#create"

  patch 'cocktails/:id', to: "cocktails#update"

  delete 'cocktails/:id', to: "cocktails#destroy"

  get 'cocktails/:id/edit', to: "cocktails#edit"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :new, :create, :destroy ]
  end
end
