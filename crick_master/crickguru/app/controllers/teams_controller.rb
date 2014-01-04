class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team].permit(:team_name,:team_contry,:team_abbr,:team_logo,:team_test_rank,:team_odi_rank,:team_tt_rank))
    @team.save
    redirect_to @team
  end

  def show
    @team = Team.find(params[:id])
  end

end
