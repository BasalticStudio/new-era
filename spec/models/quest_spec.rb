# typed: false
# == Schema Information
#
# Table name: quests
#
#  id         :bigint           not null, primary key
#  name       :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_quests_on_type_and_id  (type,id)
#
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Quest do
  describe '#type_name' do
    it { is_expected.to have_attributes(type_name: nil) }

    context 'when type is configured' do
      subject { described_class.new(type: 'Quests::Major') }

      it { is_expected.to have_attributes(type_name: 'Major') }
    end
  end
end
