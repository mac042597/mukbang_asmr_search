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
class Food < ApplicationRecord
  has_many :onomatopoeia_foods
  has_many :onomatopoeias, through: :onomatopoeia_foods, dependent: :destroy
  belongs_to :category

  validates :japanese_notation, :korean_notation,  presence: true
end
