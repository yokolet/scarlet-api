class Api::V1::LoremController < ApplicationController
  def index
    lorem = LoremIpsum.random
    render json: {
      status: 'SUCCESS',
      message: 'Random text',
      data: lorem}, status: :ok
  end
end
