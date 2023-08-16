class RestaurantsController < ApplicationController
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
    # @restaurant = Restaurant.new(restaurants_params)

    if @restaurant.save
      redirect_to @restaurant, notice: "Your restaurant was created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
