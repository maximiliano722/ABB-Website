class AttendanceLog < ApplicationRecord
    validates :event_id, numericality: {greater_than: -1}
    validates :user_id, numericality: {greater_than: -1}
end
