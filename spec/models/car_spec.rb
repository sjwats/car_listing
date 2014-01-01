require 'spec_helper'

describe Car do
  it { should have_valid(:color).when("red", "Green") }
  it { should_not have_valid(:color).when(nil, "") }

  it { should validate_presence_of :year }
  it { should validate_numericality_of(:year).is_greater_than(1979) }

  it { should validate_presence_of :mileage }
  it { should validate_numericality_of :mileage }

  it { should have_valid(:description).when("This car is not a lemon, I swear") }
end
