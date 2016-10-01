class Game < ActiveRecord::Base
  belongs_to :season

  validates :matchup_number, presence: true
  validates :home_team, presence: true
  validates :away_team, presence: true
  validates :year, presence: true
end
