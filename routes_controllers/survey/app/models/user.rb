class User < ActiveRecord::Base
    validates :name, :dojo_loc, :fav_lang, presence: true
end
