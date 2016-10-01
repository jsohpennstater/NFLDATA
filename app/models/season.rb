class Player < ActiveRecord::Base
  has_many :games

  validates :year, presence: true
end
