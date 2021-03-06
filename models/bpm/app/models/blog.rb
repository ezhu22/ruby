class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    validates_associated :posts
    has_many :owners
    has_many :users, through: :owners
    has_many :comments, as: :commentable

    validates :name, presence: true, length: { minimum: 2 }
    validates :description, presence: true, length: { minimum: 5 }
end
