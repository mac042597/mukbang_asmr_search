# == Schema Information
#
# Table name: onomatopoeia_foods
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  food_id     :bigint           not null
#
# Indexes
#
#  index_onomatopoeia_foods_on_category_id  (category_id)
#  index_onomatopoeia_foods_on_food_id      (food_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (food_id => foods.id)
#
class OnomatopoeiaFood < ApplicationRecord
  belongs_to :onomatopoeia
  belongs_to :food
end
