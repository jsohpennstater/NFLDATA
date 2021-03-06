class Game < ActiveRecord::Base
  has_many :gamestats
  has_many :stats, through: :gamestats

  validates :matchup_number, presence: true
  validates :home_team, presence: true
  validates :away_team, presence: true
  validates :year, presence: true
end
