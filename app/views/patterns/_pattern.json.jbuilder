# frozen_string_literal: true

json.extract! pattern, :id, :name, :created_at, :updated_at
json.url pattern_url(pattern, format: :json)
