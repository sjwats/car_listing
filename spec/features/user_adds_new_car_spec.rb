require 'spec_helper'

feature "user adds a new car to the system" do
  scenario 'user creates a car with valid attributes' do
    visit '/'
    click_on "Create New Car"
    fill_in "Year", with: 1980
    fill_in "Color", with: 'red'
    fill_in "Mileage", with: 2500
    fill_in "Description", with: "Thorough description"
    click_on "Create Car"
    expect(page).to have_content('Car created successfully')
  end

  scenario 'user creates car with invalid attributes' do
    visit '/'
    click_on "Create New Car"
    click_on "Create Car"
    within ".input.car_year" do
      expect(page).to have_content "can't be blank"
    end

    within ".input.car_color" do
      expect(page).to have_content "can't be blank"
    end

    within ".input.car_mileage" do
      expect(page).to have_content "can't be blank"
    end
  end

  scenario 'user creates car with invalid year' do
    visit '/'
    click_on "Create New Car"
    fill_in "Year", with: 1978
    fill_in "Color", with: 'red'
    fill_in "Mileage", with: 2500
    click_on "Create Car"
    within ".input.car_year" do
      expect(page).to have_content "must be greater than 1979"
    end
  end

end
