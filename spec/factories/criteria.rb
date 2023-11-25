FactoryBot.define do
  factory :criteria do
    name { Faker::Lorem.word }
    association :asset, factory: :asset
  end
end