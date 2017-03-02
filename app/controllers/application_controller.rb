class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_filter :cors_set_access_headers

  # CORS needed to allow requests to work across different ports
  def cors_set_access_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
