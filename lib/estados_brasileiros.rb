require 'estados_brasileiros/version'
require 'rails'
require 'estados_brasileiros/generators/install_generator'

module EstadosBrasileiros
  class Railtie < Rails::Railtie
    railtie_name :estados_brasileiros

    generators do
      require 'estados_brasileiros/generators/install_generator'
    end
  end
end
