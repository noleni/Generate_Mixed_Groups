class Membership < ApplicationRecord
  belongs_to :caracter
  belongs_to :group
end
