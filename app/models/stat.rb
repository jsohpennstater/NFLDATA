class Stat < ActiveRecord::Base
  belongs_to :player
  belngs_to :game
  # has_many :games, :through => :gamestats

  validates :stat_type, null:false
end
