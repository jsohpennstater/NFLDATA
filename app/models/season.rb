class Game < ActiveRecord::Base
  has_many :games

  validates :year, presence: true
end
