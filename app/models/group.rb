class Group < ApplicationRecord
  has_many :memberships, dependent: :delete_all
end
