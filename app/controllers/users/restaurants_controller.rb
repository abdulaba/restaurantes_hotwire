class Users::RestaurantsController < ApplicationController
  def index
    @restaurants = current_user.restaurants.order(created_at: :desc)
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    if @restaurant.save
      redirect_to users_restaurants_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone)
  end
end
