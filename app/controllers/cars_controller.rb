class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to new_car_path, notice: 'Car created successfully'
    else
      render :new
    end
  end


  private

  def car_params
    params.require(:car).permit(:year, :color, :mileage, :description)
  end
end
