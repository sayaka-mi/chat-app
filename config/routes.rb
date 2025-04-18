Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # ルートパスへのアクセスがあったら、messages_controllerのindexアクションが呼び出されるようにします。
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end
