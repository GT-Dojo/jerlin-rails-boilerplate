# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Artist do
  describe 'associations' do
    it { is_expected.to have_many(:songs).dependent(:destroy) }
    it { is_expected.to have_many(:albums).dependent(:destroy) }
    it { is_expected.to have_one(:collaborator).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(100) }
  end
end
