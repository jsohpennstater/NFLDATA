class Stat < ActiveRecord::Base
  has_many :players, :through => :playerstats

  validates :stat_type, null:false
end
