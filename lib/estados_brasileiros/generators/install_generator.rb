require 'rails/generators'
module EstadosBrasileiros
    module Generators
        class InstallGenerator < Rails::Generators::Base
            source_root File.expand_path('../', __dir__)

            def copy_rake_file
                rake_file = 'tasks/importacao_estados.rake'
                copy_file rake_file, "lib/tasks/importacao_estados.rake"
            end
            
            def copy_model_file
                model_file = 'models/estado.rb'
                copy_file model_file, "app/models/estados_brasileiros/estado.rb"
            end

            def copy_migrate_file
                model_file = 'migrate/xxx_estados_brasileiros.rb'
                copy_file model_file, "db/migrate/#{Time.zone.now.to_i}_estados_brasileiros.rb"
            end
        end
    end
end