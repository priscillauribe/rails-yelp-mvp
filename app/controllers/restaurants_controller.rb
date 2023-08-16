class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show ]
  # User story 1: A visitor can see the list of all restaurants: GET /restaurants
  def index
    @restaurants = Restaurant.all
  end
  # User story 2: A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET "restaurants/new" and POST "restaurants"
  def new
    @restaurant = Restaurant.new
  end

  def show
  end

  def create
    # raise
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: "Your restaurant was created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
