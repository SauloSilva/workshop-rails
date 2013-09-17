class Book < ActiveRecord::Base
  # relations
  belongs_to :user

  # validates
  validates_presence_of :user, :author, :title, :published_at, :issuu_id
  validates_uniqueness_of :title

  # callback
  before_validation :set_issuu_id

  # scopes
  default_scope conditions: { published: true }

  # others
  def url
    return if issuu_id.blank?
    "http://image.issuu.com/#{ issuu_id }/jpg/page_1_thumb_large.jpg"
  end

  private
  def set_issuu_id
    Issuu::Document.list.each do |file|
      self.issuu_id = file.documentId if file.title == title
    end
    errors.add(:issuu_id, 'There is no such issuu') if issuu_id.blank?
  end
end
