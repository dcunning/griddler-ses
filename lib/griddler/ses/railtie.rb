module Griddler
  module Ses
    class Railtie < Rails::Railtie
      initializer "griddler_ses.configure_rails_initialization" do |app|
        Rails.application.middleware.insert_before Rack::ConditionalGet, Griddler::Ses::Middleware
      end
    end
  end
end
