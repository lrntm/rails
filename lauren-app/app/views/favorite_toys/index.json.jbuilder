json.array!(@favorite_toys) do |favorite_toy|
  json.extract! favorite_toy, :id, :name, :type
  json.url favorite_toy_url(favorite_toy, format: :json)
end
