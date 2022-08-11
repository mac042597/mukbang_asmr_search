# == Schema Information
#
# Table name: onomatopoeia_foods
#
#  id              :bigint           not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  food_id         :bigint           not null
#  onomatopoeia_id :bigint           not null
#
# Indexes
#
#  index_onomatopoeia_foods_on_food_id          (food_id)
#  index_onomatopoeia_foods_on_onomatopoeia_id  (onomatopoeia_id)
#
# Foreign Keys
#
#  fk_rails_...  (food_id => foods.id)
#  fk_rails_...  (onomatopoeia_id => onomatopoeias.id)
#
require 'rails_helper'

RSpec.describe OnomatopoeiaFood, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
