class GamesController < ApplicationController


  private
  def json_response(object)
    render json: object, status: :ok
  end
end
