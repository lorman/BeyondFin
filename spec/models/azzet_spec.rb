# == Schema Information
#
# Table name: azzets
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  campaign_id :integer
#
# Indexes
#
#  index_azzets_on_campaign_id  (campaign_id)
#
# Foreign Keys
#
#  campaign_id  (campaign_id => campaigns.id)
#
require 'rails_helper'

RSpec.describe Azzet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
