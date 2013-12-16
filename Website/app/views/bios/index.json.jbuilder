json.array!(@bios) do |bio|
  json.extract! bio, :about
  json.url bio_url(bio, format: :json)
end
