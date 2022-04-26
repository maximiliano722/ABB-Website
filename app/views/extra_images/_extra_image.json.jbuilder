# frozen_string_literal: true

json.extract! extra_image, :id, :group, :description, :created_at, :updated_at
json.url extra_image_url(extra_image, format: :json)
