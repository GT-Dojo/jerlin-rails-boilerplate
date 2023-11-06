# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :artist
  belongs_to :publisher

  has_many :songs, dependent: :destroy

  validates :title, presence: true
  validates :title, length: { maximum: 200 }
end
