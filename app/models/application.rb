class Application < ApplicationRecord
    validates :name, presence: true
    validates :email, format: { with: /[A-Za-z0-9._-]+@tamu\.edu/,
    message: "must be a valid tamu email address" }
    validates :status, presence: true
end
 