class ReservationsController < ApplicationController

  def new

  end

  def create
    @reservation = Reservation.new

    restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(restaurant_id)
    @reservations = @restaurant.reservations

    @reservation.time = params[:reservation][:time]
    @reservation.guests = params[:reservation][:guests]
    @reservation.date = convert_date_select_params(:reservation)
    @reservation.restaurant_id = restaurant_id


    if @reservation.save
      flash[:notice] = "You have successfully created a new reservation!"
      redirect_to restaurant_path(@restaurant.id)
    else
      flash.now[:alert] = "Reservation not created"
      render 'restaurants/show'
    end

  end

  def edit
    @reservation = Reservation.find(params[:reservation_id])
    restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(restaurant_id)
  end

  def update
    @reservation = Reservation.find(params[:reservation_id])
    restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(restaurant_id)
    @reservations = @restaurant.reservations

    @reservation.time = params[:reservation][:time]
    @reservation.guests = params[:reservation][:guests]
    @reservation.restaurant_id = restaurant_id

    if @reservation.save
      flash[:notice] = "You have successfully updated this reservation!"
      redirect_to restaurant_path(@restaurant.id)
    else
      render 'restaurants/show'
    end
  end

end
