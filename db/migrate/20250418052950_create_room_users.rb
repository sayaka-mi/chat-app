class CreateRoomUsers < ActiveRecord::Migration[7.1]
  def change
    # 「room_usersテーブル」は中間テーブル
    create_table :room_users do |t|
      # references は、このカラムが rooms テーブルを参照する外部キーであることを示します。
      # foreign_key: true は、このカラムが参照するroomsテーブルの外部キー制約を持つことを示します。
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
