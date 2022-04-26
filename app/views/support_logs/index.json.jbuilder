# frozen_string_literal: true

json.array! @support_logs, partial: 'support_logs/support_log', as: :support_log
