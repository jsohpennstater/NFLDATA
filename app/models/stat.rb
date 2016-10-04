class Stat < ActiveRecord::Base
  belongs_to :player
  belongs_to :game
  has_many :games, through: :gamestats

  validates :stat_type, null: false
  validates :matchup_number, null: false
end
