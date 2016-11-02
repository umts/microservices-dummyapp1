class Car < ApplicationRecord
  validates :name, :color, presence: true
  validates :name, :space_uuid, uniqueness: { allow_blank: true }

  scope :unparked, -> { where space_uuid: nil }

  def can_park?
    # TODO: check if there is an available space
  end

  def park!
    # TODO: get an available space, claim it, and store its UUID
  end

  def self.clear_out!
    # TODO: clear all used parking spaces
  end
end
