class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
<<<<<<< HEAD




  def check_user
    authenticate_or_request_with_http_basic('Application') do |user, password|
      password == Rails.application.secrets.admin_password
    end
  end
  end
=======
end
>>>>>>> 6eea5c94dcd3075e80929bde240b936dffc59413
