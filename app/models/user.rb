# require 'bcrypt'

class User < ApplicationRecord
  has_secure_password
  has_many :questions, foreign_key: :author_id
  has_many :answers, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  has_many :votes, foreign_key: :voter_id

  validates :username, presence: true

end
