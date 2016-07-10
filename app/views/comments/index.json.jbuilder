json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :user_id, :occurrence_id, :time
  json.url comment_url(comment, format: :json)
end
