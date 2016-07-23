class HealthCenterArea < ActiveRecord::Base
  belongs_to :health_center
  belongs_to :area
end
