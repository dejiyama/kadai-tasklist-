Rails.application.routes.draw do
root to: 'toppages#index'

get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
get 'tasks/:id/edit', to: 'tasks#edit'
delete 'logout', to: 'sessions#destroy'

get 'signup', to: 'users#new'

resources :tasks
resources :users, only: [:index, :show, :new, :create, :edit]
resources :tasks, only: [:create, :destroy]
end

