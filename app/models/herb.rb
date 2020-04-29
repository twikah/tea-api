class Herb < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
  has_many :herb_types, dependent: :destroy
  has_many :herb_varieties, through: :herb_types

  before_save :downcase_herb

  validates :name, presence: true, uniqueness: true

  private

  def downcase_herb
    name.downcase!
  end
end
