# lib/api/api/root.rb

class API::Root < Grape::API
  prefix 'api'
  format :json

  rescue_from :all, :backtrace => true
  error_formatter :json, API::Formatter::BaseErrorFormatter

  before do
    error!("401 Unauthorized", 401) unless authenticated
  end

  mount API::V1::Root
end