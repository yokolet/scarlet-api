class Api::V1::LoremController < ApplicationController
  def index
    if @authrep_statu
      lorem = LoremIpsum.random
      render json: {
        status: 'SUCCESS',
        message: 'Random text',
        data: lorem}, status: :ok
    else
      render status: 401
    end
  end
end
