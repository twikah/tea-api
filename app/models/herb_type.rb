class HerbType < ApplicationRecord
  belongs_to :user
  belongs_to :herb
  has_many :herb_varieties, dependent: :destroy

  before_save :downcase_herb

  validates :name, presence: true, uniqueness: true

  private

  def downcase_herb
    name.downcase!
  end
end
