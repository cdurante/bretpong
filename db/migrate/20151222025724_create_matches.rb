class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :match_winner
      t.integer :match_loser
      t.integer :num_games

      t.timestamps null: false
    end
  end
end
