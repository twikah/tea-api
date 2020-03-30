class HerbVarietal < ApplicationRecord
  belongs_to :herb
  belongs_to :user
  has_many :ingredients_benefits, as: :benefitable
  has_many :health_benefits, through: :ingredients_benefits
end
