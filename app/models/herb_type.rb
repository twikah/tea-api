class HerbType < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
  belongs_to :herb
  has_many :herb_varieties, dependent: :destroy

  before_save { name.downcase! }

  validates :name, presence: true, uniqueness: true
end
