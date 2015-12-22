json.array!(@scoreboards) do |scoreboard|
  json.extract! scoreboard, :id
  json.url scoreboard_url(scoreboard, format: :json)
end
