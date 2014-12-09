json.array!(@records) do |record|
  json.extract! record, :id, :title, :artist, :year, :label, :genre, :discs, :tracks
  json.url record_url(record, format: :json)
end
