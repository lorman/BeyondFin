# == Schema Information
#
# Table name: criteria
#
#  id         :integer          not null, primary key
#  image      :string
#  operand    :string
#  order      :integer
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  azzet_id   :integer
#  parent_id  :integer
#
# Indexes
#
#  index_criteria_on_azzet_id  (azzet_id)
#
# Foreign Keys
#
#  azzet_id  (azzet_id => azzets.id)
#
FactoryBot.define do
  factory :criteria do
    name { Faker::Lorem.word }
    association :asset, factory: :asset
  end
end
