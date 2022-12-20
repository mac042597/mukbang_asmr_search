# == Schema Information
#
# Table name: foods
#
#  id                :bigint           not null, primary key
#  japanese_notation :string           not null
#  korean_notation   :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  category_id       :integer
#  user_id           :bigint
#
# Indexes
#
#  index_foods_on_japanese_notation_and_korean_notation  (japanese_notation,korean_notation) UNIQUE
#  index_foods_on_user_id                                (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Food, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
