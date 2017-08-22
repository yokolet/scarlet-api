class Api::V1::LoremController < ApplicationController
  def index
    lorem = LoremIpsum.random
    render json: {
      status: 'SUCCESS',
      message: 'Current time on the server',
      data: lorem}, status: :ok
  end
end
