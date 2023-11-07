# frozen_string_literal: true

class Collaborator < ApplicationRecord
  belongs_to :artist

  has_many :track_collaborators
  has_many :tracks, through: :track_collaborators
end
