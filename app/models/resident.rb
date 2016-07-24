class Resident < ActiveRecord::Base
  belongs_to :area
  has_many :resident_lgu_responses

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
