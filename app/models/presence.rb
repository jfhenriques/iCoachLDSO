class Presence < ActiveRecord::Base
  belongs_to :player
  belongs_to :practice
end
