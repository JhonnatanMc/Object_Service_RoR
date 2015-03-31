json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :createdAt, :lastLogin
  json.url user_url(user, format: :json)
end
