class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_associated :reviews
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :category, exclusion: { in: %w(neptunian),
  message: "neptunian is not a valid category." }
end
