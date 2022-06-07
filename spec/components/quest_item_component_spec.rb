# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe QuestItemComponent, type: :component do
  subject { page }

  let(:component) { described_class.new(quest: quest) }
  let(:quest) { build(:quest, name: '新手教學', type: 'Quests::Major') }

  before { render_inline(component) }

  it { is_expected.to have_text('新手教學') }
  it { is_expected.to have_text('主線') }
end
