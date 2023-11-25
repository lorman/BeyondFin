FactoryBot.define do
  factory :campaign do
    name { Faker::Lorem.word }
    association :user, factory: :user
    association :asset, factory: :asset
  end
end