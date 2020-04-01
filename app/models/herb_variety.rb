class HerbVariety < ApplicationRecord
  belongs_to :user
  belongs_to :herb_type

  before_save :downcase_herb

  validates :name, presence: true

  private

  def downcase_herb
    name.downcase!
  end
end
