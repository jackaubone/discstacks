class List < ApplicationRecord
  validates :list_title, presence: true

  has_many :list_items
  has_many :items, through: :list_items


  def list_author
    author = User.find_by(id: self.user_id)
    return author
  end

end
