class IngredientsBenefit < ApplicationRecord
  belongs_to :user
  belongs_to :health_benefit
  belongs_to :benefitable, polymorphic: true # instead of belongs_to herb or herb_varietal
end
