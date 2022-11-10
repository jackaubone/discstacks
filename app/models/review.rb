class Review < ApplicationRecord
  validates :item_id, presence: true
  validates :rating, presence: true, numericality: {greater_than: 0, less_than: 11}


  belongs_to :user
  belongs_to :item


end
