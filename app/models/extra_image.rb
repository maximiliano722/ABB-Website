# frozen_string_literal: true

class ExtraImage < ApplicationRecord
  has_one_attached :image
end
