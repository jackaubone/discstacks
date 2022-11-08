class Genre < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :genre_tags
end
