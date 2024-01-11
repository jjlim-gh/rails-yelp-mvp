class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: { message: "Please type a name..." }
  validates :category, inclusion: { in: %w(Chinese Italian Japanese French Belgian) }
  has_many :reviews, dependent: :destroy
end
