# frozen_string_literal: true

class AddTypeColumnToTracks < ActiveRecord::Migration[7.0]
  def change
    add_column :tracks, :type, :string
  end
end
