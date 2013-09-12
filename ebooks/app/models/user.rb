class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validations
  validates_presence_of :name, :birthdate
  validates_uniqueness_of :name

  # association
  has_many :books, dependent: :destroy

  # others
  def avatar
    md5 = Digest::MD5.hexdigest(email).to_s
    "http://gravatar.com/avatar/#{md5}.png"
  end
end
