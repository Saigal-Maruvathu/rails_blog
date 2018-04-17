class Post < ApplicationRecord
    belongs_to :user
    has_many :remarks
    validates :title, :content, presence: true
end
