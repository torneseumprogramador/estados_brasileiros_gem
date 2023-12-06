require 'rails/generators'
module EstadosBrasileirosActiveRecord
    module Generators
        class InstallGenerator < Rails::Generators::Base
            source_root File.expand_path('../', __dir__)

            def copy_rake_file
                rake_file = 'tasks/importacao_estados.rake'
                copy_file rake_file, "lib/tasks/importacao_estados.rake"
            end
            
            def copy_model_file
                model_file = 'models/estado.rb'
                copy_file model_file, "app/models/estados_brasileiros_active_record/estado.rb"
            end
        end
    end
end