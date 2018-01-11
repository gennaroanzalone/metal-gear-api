class GamesController < ApplicationController

  def index
    @games = Game.all
    json_response(@games)
  end

  def show
    @game = Game.find(params[:id])
    json_response(@game)
  end

  def create
    @game = Game.create(game_params)
    json_response(@game)
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
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
