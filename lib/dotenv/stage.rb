require 'dotenv'

module Dotenv
  class Stage
    attr_reader :stage

    def initialize(stage = nil)
      @stage = stage || default_stage
    end

    def self.load(stage = nil)
      new(stage).load
    end

    def load
      Dotenv.load(*dotenv_files)
    end

    private

    def default_stage
      ENV.fetch('STAGE') { ENV.fetch('RAILS_ENV') }.downcase
    rescue KeyError
      raise KeyError, 'Missing ENV variable "STAGE" or "RAILS_ENV"', cause: nil
    end

    def dotenv_files
      [".env.#{stage}.local",
       (".env.local" unless stage == 'test'),
       ".env.#{stage}",
       ".env"].compact
    end
  end
end
