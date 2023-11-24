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
#  assets_id  :integer
#  parent_id  :integer
#
# Indexes
#
#  index_criteria_on_assets_id  (assets_id)
#
# Foreign Keys
#
#  assets_id  (assets_id => assets.id)
#
class Criteria < ApplicationRecord
  belongs_to :asset
  has_many :criteria, class_name: 'Criteria', foreign_key: :parent_id, dependent: :destroy
  belongs_to :parent, class_name: 'Criteria', foreign_key: :parent_id, optional: true
end
