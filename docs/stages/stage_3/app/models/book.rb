class Book < ActiveRecord::Base
  # relations
  belongs_to :user
  has_and_belongs_to_many :categories

  accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: proc{ |attrs| attrs['id'].blank? }

  # validates
  validates_presence_of :user, :author, :title, :published_at, :issuu_id
  validates_uniqueness_of :title

  # callback
  before_validation :set_issuu_id

  # scopes
  default_scope conditions: { published: true }

  # attr_accesible
  attr_accessor :category_titles

  # others
  def url
    return if issuu_id.blank?
    "http://image.issuu.com/#{ issuu_id }/jpg/page_1_thumb_large.jpg"
  end

  def category_titles=(titles)
    self.category_ids = titles.map do |title|
      Category.where(title: title).first_or_create.id
    end
  end

  def category_titles
    Category.where(id: category_ids) unless self.category_ids.blank?
  end

  private
  def set_issuu_id
    Issuu::Document.list.each do |file|
      self.issuu_id = file.documentId if file.title == title
    end
    errors.add(:issuu_id, 'There is no such issuu') if issuu_id.blank?
  end
end
