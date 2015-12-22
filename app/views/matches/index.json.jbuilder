json.array!(@matches) do |match|
  json.extract! match, :id, :match_winner, :match_loser, :num_games
  json.url match_url(match, format: :json)
end
