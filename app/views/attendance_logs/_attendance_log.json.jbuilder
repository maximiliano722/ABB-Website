json.extract! attendance_log, :id, :event_id, :user_id, :created_at, :updated_at
json.url attendance_log_url(attendance_log, format: :json)
