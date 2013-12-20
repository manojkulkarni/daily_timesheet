class PlayersController < ApplicationController


  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player].permit(:player_name,:player_contry,:player_role,:player_type,:player_points,:player_cost,:player_details))
    @player.save
    redirect_to @player
  end

  def show
    @player = Player.find(params[:id])
  end

end
