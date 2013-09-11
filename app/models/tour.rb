class Tour < ActiveRecord::Base
  belongs_to :sub_type
  has_many :itineraries
end
