# frozen_string_literal: true

class RenameSongToTrack < ActiveRecord::Migration[7.0]
  def change
    rename_table :songs, :tracks
    rename_table :song_collaborators, :track_collaborators
    change_table :track_collaborators do |t|
      t.rename :song_id, :track_id
    end
  end
end
