class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper




  def check_user
    current_ip_address = request.env['HTTP_X_REAL_IP'] || request.env['REMOTE_ADDR']
    unless current_ip_address == ADMIN_API
      flash[:error] = "You do not have permission to access that page. Your ip is: "+current_ip_address
      redirect_to heros_path
    end
  end
  end
