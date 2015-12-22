class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_many :wonGames, foreign_key: "game_winner", class_name: "Game", dependent: :destroy
  has_many :lostGames, foreign_key: "game_loser", class_name: "Game", dependent: :destroy

  has_many :wonMatches, foreign_key: "match_winner", class_name: "Match", dependent: :destroy
  has_many :lostMatches, foreign_key: "match_loser", class_name: "Match", dependent: :destroy

def wins
  self.wonGames.count + self.wonMatches.count
end

def losses
  self.lostGames.count + self.lostMatches.count
end

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
