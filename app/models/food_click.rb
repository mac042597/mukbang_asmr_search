# == Schema Information
#
# Table name: food_clicks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  food_id    :integer          not null
#
class FoodClick < ApplicationRecord
  validates :food_id,  presence: true
end
