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
FactoryBot.define do
  factory :food do
    japanese_notation { "MyString" }
    korean_notation { "MyString" }
  end
end
