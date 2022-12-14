Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#login'
  get 'chat', to: 'chatroom#index'
  post 'login', to: 'sessions#create'
  post 'send_message', to: 'message#create_message'
  get 'logout', to: 'sessions#logout'

  mount ActionCable.server, at: '/cable'
end
