# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RegisterAllowlist do
  subject(:list) { described_class.new }

  context 'when allowlist source exists' do
    subject { described_class.new(source.path) }

    let(:source) { Tempfile.new('allowlist') }

    before do
      source.write("player@example.com\nplayer2@example.com")
      source.rewind
    end

    after { source.unlink }

    it { is_expected.to include('player@example.com') }
    it { is_expected.to include('player2@example.com') }
  end

  describe '#include?' do
    it { is_expected.not_to include('player@example.com') }

    context 'when player is added' do
      before do
        list.register('player@example.com')
      end

      it { is_expected.to include('player@example.com') }
    end
  end

  describe '#write' do
    subject(:write) { list.write(['player@example.com']) }

    let(:list) { described_class.new(source.path) }
    let(:source) { Tempfile.new('allowlist') }

    after { source.unlink }

    it 'is expected to have player@example.com' do
      write
      source.rewind
      expect(source.read).to include('player@example.com')
    end
  end
end
