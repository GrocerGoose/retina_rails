require 'retina_rails/version'
require 'retina_rails/extensions'
require 'retina_rails/processors'
require 'retina_rails/strategies'
require 'retina_rails/helpers'

module RetinaRails

  if defined?(Rails)
    class Railtie < Rails::Engine
      initializer "retina_rails.include_extenions" do
        RetinaRails::Extensions.include_extensions
      end

      initializer "retina_rails.include_processors" do
        RetinaRails::Processors.include_processors
      end

      initializer "retina_rails.include_strategies" do
        RetinaRails::Strategies.include_strategies
      end
    end
  end

end
