# frozen_string_literal: true

require 'rails_helper'
SimpleCov.start
RSpec.describe Option, type: :model do
  let!(:new_option) { FactoryBot.create(:option) }

  describe 'with validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:option_type) }
  end

  describe 'with enums' do
    it { is_expected.to define_enum_for(:option_type).with_values({ introvert: 0, extrovert: 1 }) }
  end

  describe 'with associations' do
    it { is_expected.to belong_to(:question) }
  end
end
