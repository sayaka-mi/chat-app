FactoryBot.define do
  factory :room_user do
    association :user
    association :room_user
  end
end