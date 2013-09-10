class Book < ActiveRecord::Base
  # relations
  belongs_to :user

  # validates
  validates_presence_of :user, :author, :title, :published_at, :url
  validates_uniqueness_of :title
  validates :url, format: URI::regexp(%w(http https))

  # scopes
  default_scope conditions: { published: true }
end
