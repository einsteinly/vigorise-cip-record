json.array!(@team_vigo_rise_online_systems) do |team_vigo_rise_online_system|
  json.extract! team_vigo_rise_online_system, :Name, :Date, :Time, :Number_of_Hours, :Reason, :Person_In_Charge, :Approval_Status
  json.url team_vigo_rise_online_system_url(team_vigo_rise_online_system, format: :json)
end