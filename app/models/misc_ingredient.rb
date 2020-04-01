class MiscIngredient < ApplicationRecord
  belongs_to :user

  before_save :downcase_ingredient

  validates :name, presence: true, uniqueness: true

  private

  def downcase_ingredient
    name.downcase!
  end
end
