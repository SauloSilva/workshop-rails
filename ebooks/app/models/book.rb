class Book < ActiveRecord::Base
  # relations
  belongs_to :user
  has_and_belongs_to_many :categories

  accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: proc{ |attrs| attrs['id'].blank? }

  # validates
  validates_presence_of :user, :author, :title, :published_at, :issuu_id
  validates_uniqueness_of :title

  # scopes
  default_scope conditions: { published: true }

  # attr_accessor
  attr_accessor :category_titles

  # callbacks
  before_validation :set_issuu_id

  def url
    return if issuu_id.blank?
    "http://image.issuu.com/#{ issuu_id }/jpg/page_1_thumb_medium.jpg"
  end

  def category_titles=(titles)
    self.category_ids = titles.map do |category_title|
      Category.where(title: category_title).first_or_create.id
    end
  end

  def category_titles
    Category.where(id: category_ids) unless self.category_ids.blank?
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
