FactoryBot.define do
  factory :asset do
    name { Faker::Lorem.word }
    association :campaign, factory: :campaign
  end
end