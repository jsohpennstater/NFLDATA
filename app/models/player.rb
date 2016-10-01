class Player < ActiveRecord::Base
  has_many :playerstats
  has_many :stats, through: :playerstats

  validates :gsis, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true
  validates :years_pro, presence: true
  validates :college, presence: true
end
