class LguResponse < ActiveRecord::Base
  belongs_to :lgu_officer
  has_many :resident_lgu_responses
end
