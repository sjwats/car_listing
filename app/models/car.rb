class Car < ActiveRecord::Base
  validates_presence_of :color
  validates_presence_of :year
  validates_numericality_of :year, greater_than: 1979
  validates_presence_of :mileage
  validates_numericality_of :mileage
end
