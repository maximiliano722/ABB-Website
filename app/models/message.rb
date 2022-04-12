class Message < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :content, presence: true
end