class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  VALID_CUISINES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: VALID_CUISINES }
end
