# typed: false
# frozen_string_literal: true

module NewEra
  class Container
    sig { params(dep: String).returns(T.any) }
    def self.resolve(dep); end
  end
end
