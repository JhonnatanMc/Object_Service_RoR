json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :userId
  json.url profile_url(profile, format: :json)
end
