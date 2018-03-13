class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper




  def check_user
    authenticate_or_request_with_http_basic('Application') do |user, password|
      password == Rails.application.secrets.admin_password
    end
  end
  end
