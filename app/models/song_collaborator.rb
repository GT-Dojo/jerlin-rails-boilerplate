# frozen_string_literal: true

class SongCollaborator < ApplicationRecord
  belongs_to :song
  belongs_to :collaborator
end
