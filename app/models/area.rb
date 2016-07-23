class Area < ActiveRecord::Base
  belongs_to :region
  has_many :lgu_officers
end
