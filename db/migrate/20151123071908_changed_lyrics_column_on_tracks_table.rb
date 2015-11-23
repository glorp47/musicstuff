class ChangedLyricsColumnOnTracksTable < ActiveRecord::Migration
  def change
    remove_column :tracks, :lyrics
    add_column :tracks, :lyrics, :string
  end
end
