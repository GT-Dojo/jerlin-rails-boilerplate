# frozen_string_literal: true

class Collaborator < ApplicationRecord
  belongs_to :artist

  has_many :song_collaborator
  has_many :songs, through: :song_collaborator
end
