# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  subject { user.name }

  context 'when the name is correct' do
    let(:user) { described_class.create(name: 'Patrick') }

    it { is_expected.to eq('Patrick') }
  end

  context 'when the name is not correct' do
    let(:user) { described_class.create(name: 'Patrick') }

    it { is_expected.to eq('Pinto') }
  end
end
