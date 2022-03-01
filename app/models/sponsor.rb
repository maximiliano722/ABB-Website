class Sponsor < ApplicationRecord
    validates :event_id, presence: true
    validates :sponsor_name, presence: true
    validates :sponsor_type, inclusion: {in: %w(bronze silver gold Bronze Silver Gold), message: "Valid types are: Bronze, Silver, and Gold."}
end
 