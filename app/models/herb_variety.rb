class HerbVariety < ApplicationRecord
  belongs_to :user
  belongs_to :herb_type

  before_save { name.downcase! }

  validates :name, presence: true
end
