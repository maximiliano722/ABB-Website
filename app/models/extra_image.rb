class ExtraImage < ApplicationRecord
    validates :group, presence: true
    has_one_attached :image
end
