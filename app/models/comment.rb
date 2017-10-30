class Comment < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  belongs_to :commentable, polymorphic: :true
  has_many :votes, as: :voteable
end
