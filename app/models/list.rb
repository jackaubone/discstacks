class List < ApplicationRecord
  validates :list_title, presence: true

  has_many :list_items
  has_many :items, through: :list_items
end
