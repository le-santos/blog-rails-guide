class Article < ApplicationRecord
  has_many :comments, 
    dependent: :destroy # links destroy action to the associated dependents (e.g. comments)

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
