class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_attributes)
    @team.save
    redirect_to @team
  end

  def show
    @team = find_team
  end

  def edit
    @team = find_team
  end

  def update
    @team = find_team
    @team.update_attributes(team_attributes)
    redirect_to team_path(params[:id])
    flash[:notice] = "Team is updated successfully"
  end

  def destroy
    Team.destroy(params[:id])
    redirect_to teams_path
    flash[:notice] = "Successfuly deleted the Team"
  end

  private

  def find_team
    Team.find(params[:id])
  end

  def team_attributes
    params[:team].permit(:team_name,:team_contry,:team_abbr,:team_logo,:team_test_rank,:team_odi_rank,:team_tt_rank)
  end

end
