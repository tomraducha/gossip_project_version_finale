class Gossip < ApplicationRecord
    belongs_to :user
    has_one :city, through: :user
    has_many :comments
    validates :title, presence: true, length: { in: 3..13 }
    validates :content, presence: true
end
