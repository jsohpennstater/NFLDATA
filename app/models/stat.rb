class Stat < ActiveRecord::Base
  has_many :players, :through => :playerstats
  has_many :games, :through => :gamestats
  
  validates :stat_type, null:false
end
