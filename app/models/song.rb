# frozen_string_literal: true

class Song < ApplicationRecord
  belongs_to :album
  belongs_to :artist

  has_many :song_collaborator
  has_many :collaborators, through: :song_collaborator

  validates :title, presence: true
  validates :title, length: { maximum: 300 }
end
