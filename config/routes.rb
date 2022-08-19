Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'lists', to: 'lists#index', as: :lists
  get 'lists/new', to: 'lists#new', as: :new_list
  post 'lists', to: 'lists#create'
  get 'lists/:id/edit', to: 'lists#edit'
  patch 'lists/:id', to: 'lists#update'
  get 'lists/:id', to: 'lists#show', as: :list
  delete 'lists/:id', to: 'lists#destroy'

  get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :new_bookmark
  post 'lists/:list_id/bookmarks', to: 'bookmarks#create', as: :list_bookmarks
  delete 'lists/:list_id/bookmarks/:id', to: 'bookmarks#destroy', as: :delete_bookmark
end
