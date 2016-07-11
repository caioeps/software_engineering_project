json.array!(@reports) do |report|
  json.extract! report, :id, :text, :occurrence_id_id, :comment_id_id
  json.url report_url(report, format: :json)
end
