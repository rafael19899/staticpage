json.array!(@taskita) do |taskitum|
  json.extract! taskitum, :id, :task
  json.url taskitum_url(taskitum, format: :json)
end
