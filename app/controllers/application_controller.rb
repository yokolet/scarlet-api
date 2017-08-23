class ApplicationController < ActionController::API
  before_action :authenticate

  def create_client
    @@threescale_client ||= ThreeScale::Client.new(service_tokens: true)
  end

  def authenticate
    puts ENV['THREESCALE_SERVICE_TOKEN']
    puts ENV['THREESCALE_SERVICE_ID']
    response = create_client.authrep(
      service_token: ENV['THREESCALE_SERVICE_TOKEN'],
      service_id: ENV['THREESCALE_SERVICE_ID'],
      user_key: params['user_key'],
      usage: {'lorem_hits' => 1})
    if response.success?
      return true
    else
      puts "#{response.error_message}"
    end
  end
end
