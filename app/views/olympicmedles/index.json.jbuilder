json.array!(@olympicmedles) do |olympicmedle|
  json.extract! olympicmedle, :id, :athlete_name, :event, :country, :medal_type, :eventdate
  json.url olympicmedle_url(olympicmedle, format: :json)
end
