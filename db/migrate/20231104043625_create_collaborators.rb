# frozen_string_literal: true

class CreateCollaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :collaborators do |t|
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
