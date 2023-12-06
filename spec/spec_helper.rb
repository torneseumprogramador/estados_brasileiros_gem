require 'active_record'
require 'byebug'
require_relative '../lib/estados_brasileiros_active_record/migrate/xxx_estados_brasileiros'
require "estados_brasileiros_active_record"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: File.expand_path("../database/db.sqlite3", __dir__)
)

CreateEstados.new.change