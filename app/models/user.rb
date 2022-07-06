class User < ApplicationRecord
  has_secure_password
  has_secure_password :recovery_password, validations: false

  validates_presence_of :username
  validates_presence_of :email
  validates_length_of :username, within: 6..20, too_long: 'pick a shorter name', too_short: 'pick a longer name'
  # validates_length_of :password, within: 8..20, too_long: 'pick a shorter name', too_short: 'pick a longer name'
  # include ActiveModel::Validations
  # validates_with MyValidator
    # validates_presence_of :password
end

# class MyValidator < ActiveModel::Validator
#   def validate(record)
#     if uniq_username?
#       record.errors.add(:base, "This login already exists")
#     else uniq_email?
#       record.errors.add(:base, "This email already exists")
#     end
#   end

#   private

#   def uniq_username?
#     self.username = username.downcase
#     return true if User.exists?(username: self.username)
#   end

#   def uniq_email?
#     self.email = email.downcase
#     return true if User.exists?(email: self.email)
#   end
# end
