# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SongCollaborator do
  describe 'associations' do
    it { is_expected.to belong_to(:song).class_name('Song') }
    it { is_expected.to belong_to(:collaborator).class_name('Collaborator') }
  end
end
