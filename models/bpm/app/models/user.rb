class User < ActiveRecord::Base
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

    has_many :posts, dependent: :destroy
    validates_associated :posts
    has_many :messages, dependent: :destroy
    validates_associated :messages
    has_many :owners
    has_many :blogs, through: :owners, dependent: :destroy
    validates_associated :blogs
    has_many :comments, as: :commentable

    validates :first_name, :last_name, presence: true, length: { in: 2..20 }
    validates :email_address, presence: true, uniqueness: {case_sensitive: false }, format: { with: EMAIL_REGEX }
end
