class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users,through: :room_users
  has_many :messages, dependent: :destroy
  # 1つのチャットルームに、メッセージは複数存在

  validates :name,presence: true
end
