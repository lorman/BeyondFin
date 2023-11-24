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
class Asset < ApplicationRecord
  belongs_to :campaign
  has_many :criteria, dependent: :destroy
end
