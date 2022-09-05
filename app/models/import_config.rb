# typed: false
# frozen_string_literal: true

class ImportConfig
  include ActiveModel::API
  include ActiveModel::Attributes

  attribute :repository, :string
  attribute :fields
  attribute :source, :string

  REPOSITORIES = {
    'Map' => Map,
    'Area' => Area
  }.freeze

  def repository
    REPOSITORIES[attributes['repository']]
  end
  alias entity repository
end
