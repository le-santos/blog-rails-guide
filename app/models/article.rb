class Article < ApplicationRecord
  has_many :comments, 
    dependent: :destroy #destroy the dependent active record associations (e.g. comments)

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
