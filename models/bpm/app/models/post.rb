class Post < ActiveRecord::Base
    belongs_to :blog
    belongs_to :user
    has_many :messages, dependent: :destroy
    validates_associated :messages
    has_many :comments, as: :commentable

    validates :title, presence: true, length: { minimum: 2 }
    validates :content, presence: true, length: { minimum: 5 }
end
