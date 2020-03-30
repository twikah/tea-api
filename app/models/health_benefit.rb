class HealthBenefit < ApplicationRecord
  belongs_to :user
  has_many :ingredients_benefits

  before_create :downcase_benefit

  validates :benefit, presence: true, uniqueness: true

  private

  def downcase_benefit
    benefit.downcase!
  end
end
