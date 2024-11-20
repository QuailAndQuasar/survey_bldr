json.extract! question, :id, :text, :topic, :sort_index, :created_at, :updated_at
json.url question_url(question, format: :json)
