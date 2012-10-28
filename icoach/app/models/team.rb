class Team < ActiveRecord::Base
  belongs_to :club
  has_and_belongs_to_many :players
end