require 'test_helper'

class TeamVigoRiseOnlineSystemsControllerTest < ActionController::TestCase
  setup do
    @team_vigo_rise_online_system = team_vigo_rise_online_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_vigo_rise_online_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_vigo_rise_online_system" do
    assert_difference('TeamVigoRiseOnlineSystem.count') do
      post :create, team_vigo_rise_online_system: { Approval_Status: @team_vigo_rise_online_system.Approval_Status, Date: @team_vigo_rise_online_system.Date, Name: @team_vigo_rise_online_system.Name, Number_of_Hours: @team_vigo_rise_online_system.Number_of_Hours, Person_In_Charge: @team_vigo_rise_online_system.Person_In_Charge, Reason: @team_vigo_rise_online_system.Reason, Time: @team_vigo_rise_online_system.Time }
    end

    assert_redirected_to team_vigo_rise_online_system_path(assigns(:team_vigo_rise_online_system))
  end

  test "should show team_vigo_rise_online_system" do
    get :show, id: @team_vigo_rise_online_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_vigo_rise_online_system
    assert_response :success
  end

  test "should update team_vigo_rise_online_system" do
    patch :update, id: @team_vigo_rise_online_system, team_vigo_rise_online_system: { Approval_Status: @team_vigo_rise_online_system.Approval_Status, Date: @team_vigo_rise_online_system.Date, Name: @team_vigo_rise_online_system.Name, Number_of_Hours: @team_vigo_rise_online_system.Number_of_Hours, Person_In_Charge: @team_vigo_rise_online_system.Person_In_Charge, Reason: @team_vigo_rise_online_system.Reason, Time: @team_vigo_rise_online_system.Time }
    assert_redirected_to team_vigo_rise_online_system_path(assigns(:team_vigo_rise_online_system))
  end

  test "should destroy team_vigo_rise_online_system" do
    assert_difference('TeamVigoRiseOnlineSystem.count', -1) do
      delete :destroy, id: @team_vigo_rise_online_system
    end

    assert_redirected_to team_vigo_rise_online_systems_path
  end
end
