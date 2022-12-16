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
# Indexes
#
#  index_foods_on_japanese_notation_and_korean_notation  (japanese_notation,korean_notation) UNIQUE
#
class Food < ApplicationRecord
  has_many :onomatopoeia_foods
  has_many :onomatopoeias, through: :onomatopoeia_foods, dependent: :destroy
  belongs_to :category

  validates :japanese_notation, :korean_notation, presence: true
  validates :japanese_notation, :korean_notation, uniqueness: true
end
