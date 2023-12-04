FactoryBot.define do
  factory :azzet do
    name { Faker::Lorem.word }
    association :campaign, factory: :campaign
  end
end