json.extract! data_session, :id, :title, :subtitle, :image, :body, :keywords, :created_at, :updated_at
json.url data_session_url(data_session, format: :json)
