class Answer < ApplicationRecord
  validates :body, :author, :question, presence: true

  belongs_to :question
  belongs_to :user, foreign_key: :author_id
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
