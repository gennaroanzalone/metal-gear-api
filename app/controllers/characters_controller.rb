class CharactersController < ApplicationController

  def index
    char_name = params[:char_name]
    @characters = Character.search(char_name)
    json_response(@characters)
  end

  def show
    @character = Character.find(params[:id])
    json_response(@character)
  end

  def create
    @character = Character.create!(character_params)
    json_response(@character, :created)
  end

  def update
    if @character.update!(character_params)
      render status: 200, json: {
        message: "Character has been updated successfully."
      }
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
  end

  private

  def character_params
    params.require(:character).permit(:char_name, :first_game, :bio, :char_pic)
  end

end
