class User < ApplicationRecord
  include ActiveModel::SecurePassword

  has_secure_password
  has_secure_password :password, validations: false
  attr_accessor :password_digest, :recovery_password_digest
end
