class Category < ActiveRecord::Base
  # relations
  has_and_belongs_to_many :books

  # validations
  validates_presence_of :title

  accepts_nested_attributes_for :books, allow_destroy: true
end
