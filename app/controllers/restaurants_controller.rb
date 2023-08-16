class RestaurantsController < ApplicationController
  # User story 1: A visitor can see the list of all restaurants: GET /restaurants
  def index
    @restaurants = Restaurant.all
  end
end
