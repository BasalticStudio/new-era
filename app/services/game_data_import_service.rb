# typed: true
# frozen_string_literal: true

class GameDataImportService
  def initialize(repository, conflict_keys: [])
    @repository = repository
    @conflict_keys = conflict_keys
  end

  def execute(rows)
    columns = rows[0]
    entities = rows[1..].map { |row| columns.zip(row).to_h.slice('id', *@conflict_keys) }
    @repository.import entities, on_duplicate_key_update: @conflict_keys
  end
end
