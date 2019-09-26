class Dojo < ActiveRecord::Base
    has_many :students, dependent: :destroy

    validates :branch, :street, :city, :state, presence: true, length: { minimum: 2 }
end
