# == Schema Information
#
# Table name: assets
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  campaigns_id :integer
#
# Indexes
#
#  index_assets_on_campaigns_id  (campaigns_id)
#
# Foreign Keys
#
#  campaigns_id  (campaigns_id => campaigns.id)
#
require 'rails_helper'

RSpec.describe Asset, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
