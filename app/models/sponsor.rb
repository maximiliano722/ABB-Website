class Sponsor < ApplicationRecord
    validates :sponsor_name, presence: true
    validates :sponsor_type, inclusion: {in: %w(bronze silver gold Bronze Silver Gold), message: "Valid types are: Bronze, Silver, and Gold."}

    has_one_attached :image
end
 