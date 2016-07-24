class EvacuationCenter < ActiveRecord::Base
  has_many :evacuation_center_areas

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
