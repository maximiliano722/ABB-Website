# frozen_string_literal: true

class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  # validates :year, presence: true
  # validates :major, presence: true

  # validates :email, presence: true
  # validates :position, presence :true
  # validates :active_points, presence: true
  # validates :gpa, presence: true
  # validates :total_hours, presence: true
  # validates :is_officer, presence :true
  # validates :is_admin, presence :true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  # Returns the hash digest of the given string.
  def self.digest(string)
    cost = if ActiveModel::SecurePassword.min_cost
             BCrypt::Engine::MIN_COST
           else
             BCrypt::Engine.cost
           end
    BCrypt::Password.create(string, cost: cost)
  end
  has_one_attached :image

  # Returns a random token.
  def self.new_token
    SecureRandom.urlsafe_base64
  end
end
