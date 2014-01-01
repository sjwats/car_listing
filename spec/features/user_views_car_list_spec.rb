require 'spec_helper'

feature "user views car list" do
  scenario 'user views a list of created cars' do
    ford = FactoryGirl.create(:car)
    visit '/'
    expect(page).to have_content(ford.year)
    expect(page).to have_content(ford.color)
    expect(page).to have_content(ford.mileage)
    expect(page).to have_content(ford.description)
  end

end
