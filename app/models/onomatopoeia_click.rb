# == Schema Information
#
# Table name: onomatopoeia_clicks
#
#  id              :bigint           not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  onomatopoeia_id :integer          not null
#
class OnomatopoeiaClick < ApplicationRecord
  validates :onomatopoeia_id,  presence: true
end
