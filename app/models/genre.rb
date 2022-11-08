class Genre < ApplicationRecord
  validates :name, presence: true

  has_many :genre_tags
end
