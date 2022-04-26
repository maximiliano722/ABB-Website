# frozen_string_literal: true

class Application < ApplicationRecord
  validates :name, presence: true
  validates :email, format: { with: /\A[A-Za-z0-9._-]+@tamu\.edu\z/,
                              message: 'must be a valid tamu email address' }
  validates :status, presence: true
end
