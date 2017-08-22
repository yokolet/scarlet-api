module Api
  module V1
    class MessageController < ApplicationController
      def index
        time = Time.now
        render json: {status: 'SUCCESS', message: 'Current time on the server', data: time}, status: :ok
      end
    end
  end
end
