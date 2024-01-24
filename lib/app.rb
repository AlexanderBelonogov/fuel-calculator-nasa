FILES = %w[calculator_facade validator processor].freeze

FILES.each { |filename| require File.expand_path("lib/#{filename}") }
