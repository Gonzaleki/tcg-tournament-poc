class User < ApplicationRecord
  has_secure_password

  encrypts :password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end