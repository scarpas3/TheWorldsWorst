json.extract! event, :id, :title, :description, :year, :created_at, :updated_at
json.url event_url(event, format: :json)
