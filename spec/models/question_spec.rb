# frozen_string_literal: true

require 'rails_helper'
SimpleCov.start
RSpec.describe Question, type: :model do
  let!(:new_question) { FactoryBot.create(:question) }

  describe 'with validations' do
    it { should validate_presence_of(:title) }
    it { is_expected.to validate_uniqueness_of(:title) }
  end

  describe 'with associations' do
    it { is_expected.to have_many(:options).dependent(:destroy) }
  end
end
