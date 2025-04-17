Rails.application.routes.draw do
  get 'messages/index'
  # ルートパスへのアクセスがあったら、messages_controllerのindexアクションが呼び出されるようにします。
  root to: "messages#index"
end
