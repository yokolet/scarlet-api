class ApplicationController < ActionController::API
  before_action :authenticate

  def create_client
    @@threescale_client ||= ThreeScale::Client.new(service_tokens: true)
  end

  def authenticate
    response = create_client.authrep(
      service_token: ENV['THREESCALE_SERVICE_TOKEN'],
      service_id: ENV['THREESCALE_SERVICE_ID'],
      user_key: ENV['THREESCALE_USER_KEY'],
      usage: {'lorem_hits' => 1})
    if response.success?
      return true
    else
      puts "#{response.error_message}"
    end
  end
end
