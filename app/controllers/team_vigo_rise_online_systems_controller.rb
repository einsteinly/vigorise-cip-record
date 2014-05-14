class TeamVigoRiseOnlineSystemsController < ApplicationController
  before_action :set_team_vigo_rise_online_system, only: [:show, :edit, :update, :destroy]

  # GET /team_vigo_rise_online_systems
  # GET /team_vigo_rise_online_systems.json
  def index
    @team_vigo_rise_online_systems = TeamVigoRiseOnlineSystem.all
  end

  # GET /team_vigo_rise_online_systems/1
  # GET /team_vigo_rise_online_systems/1.json
  def show
  end

  # GET /team_vigo_rise_online_systems/new
  def new
    @team_vigo_rise_online_system = TeamVigoRiseOnlineSystem.new
  end

  # GET /team_vigo_rise_online_systems/1/edit
  def edit
  end

  # POST /team_vigo_rise_online_systems
  # POST /team_vigo_rise_online_systems.json
  def create
    @team_vigo_rise_online_system = TeamVigoRiseOnlineSystem.new(team_vigo_rise_online_system_params)

    respond_to do |format|
      if @team_vigo_rise_online_system.save
        format.html { redirect_to @team_vigo_rise_online_system, notice: 'Team vigo rise online system was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team_vigo_rise_online_system }
      else
        format.html { render action: 'new' }
        format.json { render json: @team_vigo_rise_online_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_vigo_rise_online_systems/1
  # PATCH/PUT /team_vigo_rise_online_systems/1.json
  def update
    respond_to do |format|
      if @team_vigo_rise_online_system.update(team_vigo_rise_online_system_params)
        format.html { redirect_to @team_vigo_rise_online_system, notice: 'Team vigo rise online system was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team_vigo_rise_online_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_vigo_rise_online_systems/1
  # DELETE /team_vigo_rise_online_systems/1.json
  def destroy
    @team_vigo_rise_online_system.destroy
    respond_to do |format|
      format.html { redirect_to team_vigo_rise_online_systems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_vigo_rise_online_system
      @team_vigo_rise_online_system = TeamVigoRiseOnlineSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_vigo_rise_online_system_params
      params.require(:team_vigo_rise_online_system).permit(:Name, :Date, :Time, :Number_of_Hours, :Reason, :Person_In_Charge, :Approval_Status)
    end
end
