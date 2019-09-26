class Student < ActiveRecord::Base
  belongs_to :dojo

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name, :last_name, presence: true, length: { minimum: 2 }
  validates :dojo_id, presence: true, numericality: true
  validates :email, presence: true, uniqueness: {case_sensitive: false }, format: { with: EMAIL_REGEX }
end
