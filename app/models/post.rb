class Post < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :subreddit

  validates :subreddit, presence: true
  validates :title, presence: true
  validates :body, presence: true

  acts_as_commentable
end
