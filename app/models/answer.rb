class Answer < ApplicationRecord
  validates :body, :author, :question, presence: true

  belongs_to :question
  belongs_to :author, class_name: User
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
