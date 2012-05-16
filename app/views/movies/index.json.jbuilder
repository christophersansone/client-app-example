json.array!(@movies) do |json, movie|
  json.(movie, :id, :title, :description, :mpaa_rating, :year)
end

