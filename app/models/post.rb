class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  has_many :posts_tags
  has_many :tags, through: :posts_tags
end
