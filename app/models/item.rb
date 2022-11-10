class Item < ApplicationRecord
  validates :name, presence: true
  validates :artist, presence: true

  has_many :favorites
  has_many :genre_tags
  has_many :genres, through: :genre_tags
  has_many :reviews 
  has_many :list_items

  def review_count
    count = Review.where(item_id: id)

    return count.length
  end

end
