class PlayersController < ApplicationController


  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_attributes)
    @player.save
    redirect_to @player
  end

  def show
    @player = find_player
  end

  def edit
    @player = find_player
  end

  def update
    @player = find_player
    @player.update_attributes(player_attributes)
    redirect_to player_path(params[:id])
    flash[:notice] = "Player is updated successfully"
  end

  def destroy
    Player.destroy(params[:id])
    redirect_to players_path
    flash[:notice] = "Successfuly deleted player"
  end
  
  
  private

  def player_attributes
    params[:player].permit(:player_name,:player_contry,:player_role,:player_type,:player_points,:player_cost,:player_details)
  end

  def find_player
    Player.find(params[:id])
  end

end
