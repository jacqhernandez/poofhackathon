class ResidentLguResponse < ActiveRecord::Base
  belongs_to :resident
  belongs_to :lgu_response
end
