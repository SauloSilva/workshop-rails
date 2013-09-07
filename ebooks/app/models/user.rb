class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validations
  validates_presence_of :name, :birthdate
  validates_uniqueness_of :name

end
