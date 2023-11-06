# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Publisher do
  describe 'associations' do
    it { is_expected.to have_many(:albums).dependent(:destroy) }
  end
end
