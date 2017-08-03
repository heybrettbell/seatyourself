class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def convert_date_select_params(subhash)
    Date.new(params[subhash]["date(1i)"].to_i, params[subhash]["date(2i)"].to_i, params[subhash]["date(3i)"].to_i)
  end
end
