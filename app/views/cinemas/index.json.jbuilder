json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :name, :description
  json.url cinema_url(cinema, format: :json)
end
