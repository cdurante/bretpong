class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :game_winner
      t.integer :game_loser
      t.integer :match_id

      t.timestamps null: false
    end
  end
end
