# typed: false
# frozen_string_literal: true

Before do
  Flipper.instance = Flipper.new(Flipper::Adapters::Memory.new)
end

Before('@preview') do
  Flipper.enable(:preview)
end

Before('@beta_mode') do
  Flipper.enable(:beta_mode)
end
