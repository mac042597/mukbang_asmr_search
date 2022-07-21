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
#
require 'rails_helper'

RSpec.describe Food, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
