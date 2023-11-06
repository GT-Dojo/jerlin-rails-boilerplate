# frozen_string_literal: true

class Publisher < ApplicationRecord
  has_many :albums, dependent: :destroy
end
