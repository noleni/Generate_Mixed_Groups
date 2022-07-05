class Caracter < ApplicationRecord
  has_one :membership, dependent: :destroy
  has_one_attached :photo
  after_commit :add_default_cover, only: %i[create update]

  scope :valid, -> { where(status: true) }
  scope :taken, -> { where(status: false) }

  private

  def add_default_cover
    unless photo.attached?
      self.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "catdefaultmini.png")), filename: 'catdefaultmini.png' , content_type: "image/png")
    end
  end
end
