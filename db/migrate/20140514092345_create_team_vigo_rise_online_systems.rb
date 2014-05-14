class CreateTeamVigoRiseOnlineSystems < ActiveRecord::Migration
  def change
    create_table :team_vigo_rise_online_systems do |t|
      t.string :Name
      t.string :Date
      t.string :Time
      t.string :Number_of_Hours
      t.string :Reason
      t.string :Person_In_Charge
      t.string :Approval_Status

      t.timestamps
    end
  end
end
