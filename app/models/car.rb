class Car < ApplicationRecord
  validates :name, :color, presence: true
  validates :name, :space_uuid, uniqueness: { allow_blank: true }
end
