require 'estados_brasileiros_active_record/version'
require 'rails'
require 'estados_brasileiros_active_record/generators/install_generator'

module EstadosBrasileirosActiveRecord
  class Railtie < Rails::Railtie
    railtie_name :estados_brasileiros_active_record

    generators do
      require 'estados_brasileiros_active_record/generators/install_generator'
    end
  end
end
