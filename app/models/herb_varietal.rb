class HerbVarietal < ApplicationRecord
  belongs_to :user
  belongs_to :herb
  has_many :ingredients_benefits, as: :benefitable
  has_many :health_benefits, through: :ingredients_benefits

  validates :herb_type, presence: true,
                        inclusion: {
                          in: ["Black tea", "White tea", "Dark tea",
                            "Yellow tea", "Oolong tea", "Green tea"],
                          message: "%{value} is not a valid tea type"
                        }
end
