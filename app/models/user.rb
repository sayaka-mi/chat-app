class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: :true
  # 空の場合はDBに保存しないというバリデーションを設定

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
  # 1人のユーザーは、複数のメッセージを送信できます。

end
