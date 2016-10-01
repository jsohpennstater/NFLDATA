class Stat < ActiveRecord::Base
  belongs_to :player
  has_many :games, :through => :gamestats

  validates :stat_type, null:false
end
