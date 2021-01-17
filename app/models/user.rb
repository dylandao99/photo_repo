class User < ApplicationRecord
  has_many :photos
  validates_uniqueness_of :username
  has_secure_password
end
