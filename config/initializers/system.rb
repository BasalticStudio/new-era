# typed: false
# frozen_string_literal: true

Dry::Rails.container do
  config.component_dirs.add 'app/services'
end
