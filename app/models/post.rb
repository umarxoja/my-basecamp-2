
class Post < ApplicationRecord
    default_scope { order created_at: :desc }
    validates :title, presence: true, length: {minimum: 5, maximum: 50}
    validates :body, presence: true, length: {minimum: 10, maximum: 1000}
    belongs_to :user
    has_many :comments, dependent: :destroy 
end
