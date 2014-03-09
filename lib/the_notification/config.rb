module TheNotification
  def self.configure(&block)
    yield @config ||= TheNotification::Configuration.new
  end

  def self.config
    @config
  end

  # Configuration class
  class Configuration
    include ActiveSupport::Configurable

    config_accessor :notifications_type
  end

  configure do |config|
    config.notifications_type = :html # :json
  end
end