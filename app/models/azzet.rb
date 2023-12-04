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
class Azzet < ApplicationRecord
  belongs_to :campaign
  has_many :criteria, class_name: 'Criteria', dependent: :destroy
end
