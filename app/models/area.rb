class Area < ActiveRecord::Base
  belongs_to :region
  has_many :lgu_officers
  has_many :residents
  has_many :evacuation_center_areas
  has_many :health_center_areas

  geocoded_by :name   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
