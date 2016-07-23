class EvacuationCenterArea < ActiveRecord::Base
  belongs_to :evacuation_center
  belongs_to :area
end
