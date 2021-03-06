require 'responders'
require 'enumerize'
require 'kramdown'
require 'coderay'
require 'open-uri'

module Blogy
  class Engine < ::Rails::Engine
    isolate_namespace Blogy

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
