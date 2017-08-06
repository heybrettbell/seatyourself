class RestaurantsController < ApplicationController

    def index
      @restaurants = Restaurant.all
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      unless current_user
        redirect_to sessions_new_path
      end

      @reservation = Reservation.new
    end

end
