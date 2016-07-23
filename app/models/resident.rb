class Resident < ActiveRecord::Base
  belongs_to :area
  has_many :resident_lgu_responses
end
