class GamesController < ApplicationController

  before_action :authenticate_account!

  def index
    @games = Game.all
  end

  def show
    @game = Game.find params[:id]
  end

  def new
    @game = Game.new
  end

  def engage
    @game = Game.find params[:id]
    @game.engage current_account
    @game.save

    flash[:success] = "Successfully joined game ##{@game.id}"
    redirect_to game_path @game
  end

  def create
    @game = Game.new params[:game]
    @game.engage current_account
    @game.save

    flash[:success] = 'Game successfully created!'
    redirect_to games_path
  end

end
