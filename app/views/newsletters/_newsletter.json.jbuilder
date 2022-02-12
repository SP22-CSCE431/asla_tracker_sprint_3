# frozen_string_literal: true

json.extract!(newsletter, :id, :date_posted, :message, :title, :created_at, :updated_at)
json.url(newsletter_url(newsletter, format: :json))
