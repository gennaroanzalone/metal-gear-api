class GamesController < ApplicationController

  def index
    name = params[:name]
    @games = Game.search(name)
    json_response(@games)
  end

  def show
    @game = Game.find(params[:id])
    json_response(@game)
  end

  def create
    @game = Game.create!(game_params)
    json_response(@game, :created)
  end

  def update
    if @game.update!(game_params)
      render status: 200, json: {
        message: "Game has been updated successfully."
      }
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
  end

  private

  def game_params
    params.permit(:name, :release, :description, :story, :gameplay, :development)
  end

end
