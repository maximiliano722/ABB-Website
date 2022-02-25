class Application < ApplicationRecord
  validates :application_id, presence: true #enables validation for title attribute
  validates :user_id, presence: true #enables validation for title attribute
  validates :name, presence: true #enables validation for title attribute
  validates :email, presence: true
  validates :status, presence: true 
end