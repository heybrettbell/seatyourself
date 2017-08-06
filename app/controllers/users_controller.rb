class UsersController < ApplicationController

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation]
    )

    if @user.save
      # session[:user_id] = @user.id
      flash[:notice] = "Welcome!"
      redirect_to root_path
    else
      render :new
    end
  end

  # to edit current user info we need to implement sessions
  # def edit
  #  @user = current_user
  # end
  #
  # def update
  #   @user = User.new(
  #     email: params[:user][:email],
  #     password: params[:user][:password],
  #     password_confirmation: params[:user][:password_confirmation]
  #   )
  #
  #   if @user.save
  #     flash[:notice] = "Account Updated!"
  #     redirect_to root_path
  #   else
  #     render :new
  #   end

end
