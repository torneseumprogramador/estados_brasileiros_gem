require 'rails/generators'
module EstadosBrasileirosActiveRecord
    module Generators
        class InstallGenerator < Rails::Generators::Base
            def copy_rake_file
                rake_file = File.expand_path('../tasks/importacao_estados.rake', __dir__)
                copy_file rake_file, "lib/tasks/importacao_estados.rake"
            end
            
            def copy_model_file
                model_file = File.expand_path('../models/estado.rb', __dir__)
                copy_file model_file, "app/models/estados_brasileiros_active_record/estado.rb"
            end
        end
    end
end