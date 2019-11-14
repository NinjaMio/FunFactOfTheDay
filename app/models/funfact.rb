class Funfact < ApplicationRecord
  validates :fact, presence: true, length: { maximum: 140, minimum: 1 }
  validates :author, presence: true, length: { maximum: 50, minimum: 1 }
end
