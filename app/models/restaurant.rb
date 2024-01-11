class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: { message: "Please type a valid entry" }
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
  has_many :reviews, dependent: :destroy
end
