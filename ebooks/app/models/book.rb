class Book < ActiveRecord::Base
  # relations
  belongs_to :user

  # validates
  validates_presence_of :user, :author, :title, :published_at, :issuu_id
  validates_uniqueness_of :title

  # scopes
  default_scope conditions: { published: true }

  # callbacks
  before_validation :set_issuu_id

  def url
    return if issuu_id.blank?
    "http://image.issuu.com/#{ issuu_id }/jpg/page_1_thumb_medium.jpg"
  end

  private
  def set_issuu_id
    Issuu::Document.list.each do |file|
      if file.title == title
        self.issuu_id = file.documentId
      else
        errors.add(:issuu_id, 'There is no such issuu')
      end
    end
  end
end
