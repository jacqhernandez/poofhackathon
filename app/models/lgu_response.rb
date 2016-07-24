class LguResponse < ActiveRecord::Base
  belongs_to :lgu_officer
  has_many :resident_lgu_responses

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
end
