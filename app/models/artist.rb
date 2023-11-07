# frozen_string_literal: true

class Artist < ApplicationRecord
  has_many :tracks, dependent: :destroy
  has_many :albums, dependent: :destroy

  has_one :collaborator, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { maximum: 100 }
end
