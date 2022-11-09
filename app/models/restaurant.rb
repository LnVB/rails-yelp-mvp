class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: CATEGORY }
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  has_many :reviews, dependent: :destroy
end
