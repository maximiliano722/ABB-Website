class Admin < ApplicationRecord
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  validates_format_of :email, :with => /@gmail.com || @tamu.edu\z/ 
  
end