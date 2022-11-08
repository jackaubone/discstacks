class Item < ApplicationRecord
  validates :name, presence: true
  validates :artist, presence: true

  has_many :favorites
  has_many :genre_tags
  has_many :reviews 
  has_many :list_items
end
