class Room < ApplicationRecord
  has_many :messages

  validates :name, uniqueness: true, presence: true
end
