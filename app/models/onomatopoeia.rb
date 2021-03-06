# == Schema Information
#
# Table name: onomatopoeias
#
#  id                :bigint           not null, primary key
#  japanese_notation :string           not null
#  korean_notation   :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Onomatopoeia < ApplicationRecord
  has_many :onomatopoeia_foods
  has_many :foods, through: :onomatopoeia_foods

  # 指定された属性が空（empty）でないことを確認
  validates :japanese_notation, :korean_notation,  presence: true
end
