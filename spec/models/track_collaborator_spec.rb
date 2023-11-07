# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TrackCollaborator do
  describe 'associations' do
    it { is_expected.to belong_to(:track).class_name('Track') }
    it { is_expected.to belong_to(:collaborator).class_name('Collaborator') }
  end
end
