class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def convert_date_select_params(subhash)
    Date.new(params[subhash]["date(1i)"].to_i, params[subhash]["date(2i)"].to_i, params[subhash]["date(3i)"].to_i)
  end

end
