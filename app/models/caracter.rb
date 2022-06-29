class Caracter < ApplicationRecord
  has_one :membership
  has_one_attached :photo

  scope :valid, -> { where(status: true) }
end
