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
class Criteria < ApplicationRecord
  belongs_to :azzet
  has_many :children, class_name: 'Criteria', foreign_key: :parent_id, dependent: :destroy
  belongs_to :parent, class_name: 'Criteria', foreign_key: :parent_id, optional: true
  
  validates_uniqueness_of :order, scope: %i[azzet_id parent_id]
  scope :parents, -> { where(parent_id: nil) }

end
