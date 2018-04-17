class User < ApplicationRecord
    has_many :posts
    has_many :remarks
    validates :username, :password, presence: true
end
