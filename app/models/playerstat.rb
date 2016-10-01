class Playerstat < ActiveRecord::Base
  belongs_to :player
  belongs_to :stat
end
