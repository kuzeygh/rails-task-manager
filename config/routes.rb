Rails.application.routes.draw do
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/:id', to: 'tasks#show'
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'

  resources :tasks

end
