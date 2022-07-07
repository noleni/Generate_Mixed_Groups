class Request < ApplicationRecord
  has_many :groups
  has_many :memberships, through: :groups
end
