# frozen_string_literal: true

class Track < ApplicationRecord
  belongs_to :album
  belongs_to :artist

  has_many :track_collaborators
  has_many :collaborators, through: :track_collaborators

  validates :title, presence: true
  validates :title, length: { maximum: 300 }
end
