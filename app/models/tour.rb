class Tour < ActiveRecord::Base
  belongs_to :sub_type
  has_many :itineraries
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>"},  :default_url => "/images/:style/missing.png"

end
