# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Song do
  describe 'associations' do
    it { is_expected.to belong_to(:artist).class_name('Artist') }
    it { is_expected.to belong_to(:album).class_name('Album') }
    it { is_expected.to have_many(:collaborators).through(:song_collaborator) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(300) }
  end
end
