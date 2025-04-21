class Message < ApplicationRecord
  belongs_to :room
  # 1つのメッセージは、1つのチャットルームに存在
  belongs_to :user
  # 1つのメッセージは、1人のユーザーから送信
end
