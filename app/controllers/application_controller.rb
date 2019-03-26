class ApplicationController < ActionController::Base
  before_action :basic_auth

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials.basic_auth_user && password == Rails.application.credentials.basic_auth_pass
    end
  end

end
