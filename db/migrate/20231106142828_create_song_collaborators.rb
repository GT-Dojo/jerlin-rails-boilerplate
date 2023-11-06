# frozen_string_literal: true

class CreateSongCollaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :song_collaborators do |t|
      t.references :song, null: false, foreign_key: true
      t.references :collaborator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
