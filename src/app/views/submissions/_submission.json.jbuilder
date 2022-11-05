json.extract! submission, :id, :name, :description, :industry, :country, :created_at, :updated_at
json.url submission_url(submission, format: :json)
