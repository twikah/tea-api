class Herb < ApplicationRecord
  belongs_to :user
  has_many :herb_varietals
  has_many :ingredients_benefits, as: :benefitable
  has_many :health_benefits, through: :ingredients_benefits

  before_save :downcase_herb

  validates :name, presence: true, uniqueness: true

  private

  def downcase_herb
    name.downcase!
  end
end
