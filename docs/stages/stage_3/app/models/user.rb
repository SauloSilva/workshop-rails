class User < ActiveRecord::Base
  # relations
  has_many :books, dependent: :destroy

  # include devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validate
  validates_presence_of :name, :birthdate
  validates_uniqueness_of :name

  # others
  def avatar
    md5 = Digest::MD5.hexdigest(email).to_s
    "http://gravatar.com/avatar/#{md5}.png"
  end
end
