class AddRecordingTypeToTracksTable < ActiveRecord::Migration
  def change
    add_column :tracks, :band_id, :integer
    add_column :tracks, :recording_type, :string
    change_column :tracks, :band_id, :integer, null: false
    change_column :tracks, :recording_type, :string, null: false
  end
end
