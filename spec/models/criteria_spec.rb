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
require 'rails_helper'

RSpec.describe Criteria, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
