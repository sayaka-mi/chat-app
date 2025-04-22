class Message < ApplicationRecord
  belongs_to :room
  # 1つのメッセージは、1つのチャットルームに存在
  belongs_to :user
  # 1つのメッセージは、1人のユーザーから送信
  has_one_attached :image
  # messagesテーブルにカラムを追加する必要はない


  validates :content, presence: true
  # 空の場合はDBに保存しない
end
