class Group < ApplicationRecord
  belongs_to :request
  has_many :memberships, dependent: :delete_all
end
