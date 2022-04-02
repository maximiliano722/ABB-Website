class SupportLog < ApplicationRecord
  validates :event_id, numericality: { greater_than: -1 }
  validates :sponsor_id, numericality: { greater_than: -1 }
end
