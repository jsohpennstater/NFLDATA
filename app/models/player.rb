class Player < ActiveRecord::Base

  validates :gsis, presence: true
  validates :first_name, presence: true
  validates :last_team, presence: true
  validates :birthdate, presence: true
  validates :years_pro, presence: true
  validates :college, presence: true
end
