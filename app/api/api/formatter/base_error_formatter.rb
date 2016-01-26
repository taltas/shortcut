# app/api/api/formatter/base_error_formatter.rb

class API::Formatter::BaseErrorFormatter
  def self.call message, backtrace, options, env
    { :response_type => 'error', :response => message }.to_json
  end
end