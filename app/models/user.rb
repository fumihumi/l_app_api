class User < ApplicationRecord
  has_many :messages

  validates :name, uniqueness: true, presence: true
  validates :nickname, uniqueness: true, presence: true
end
