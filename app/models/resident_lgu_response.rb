class ResidentLguResponse < ActiveRecord::Base
  belongs_to :resident
  belongs_to :lgu_response

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
end
