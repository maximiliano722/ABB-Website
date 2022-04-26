# frozen_string_literal: true

json.extract! support_log, :id, :event_id, :sponsor_id, :created_at, :updated_at
json.url support_log_url(support_log, format: :json)
