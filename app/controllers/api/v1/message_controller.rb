class Api::V1::MessageController < ApplicationController
  def index
    time = Time.now
    render json: {status: 'SUCCESS', message: 'Current time on the server', data: time}, status: :ok
  end
end
