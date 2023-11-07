# frozen_string_literal: true

class TrackCollaborator < ApplicationRecord
  belongs_to :track
  belongs_to :collaborator
end
