class MiscIngredient < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user

  before_save { name.downcase! }

  validates :name, presence: true, uniqueness: true
end
