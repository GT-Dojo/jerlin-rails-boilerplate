# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Album do
  describe 'associations' do
    it { is_expected.to belong_to(:artist).class_name('Artist') }
    it { is_expected.to belong_to(:publisher).class_name('Publisher') }
    it { is_expected.to have_many(:songs).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(200) }
  end
end
