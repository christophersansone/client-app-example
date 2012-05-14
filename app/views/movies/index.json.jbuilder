json.array!(@movies) do |json, movie|
  json.(movie, :title, :description, :mpaa_rating)
end

