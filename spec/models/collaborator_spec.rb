# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Collaborator do
  describe 'associations' do
    it { is_expected.to belong_to(:artist).class_name('Artist') }
    it { is_expected.to have_many(:tracks).through(:track_collaborators) }
  end
end
