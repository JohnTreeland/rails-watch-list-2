Rails.application.routes.draw do
  get 'bookmark/new'
  get 'bookmark/create'
  get 'bookmark/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'lists#index'
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
