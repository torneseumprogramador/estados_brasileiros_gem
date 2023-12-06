require_relative '../spec_helper'
require 'rake'
require 'rails'

RSpec.describe 'impotacao_estados:importar' do
    before :all do
        Rake.application.rake_require File.expand_path("../../lib/estados_brasileiros/tasks/importacao_estados", __dir__), [Rails.root.to_s]
        Rake::Task.define_task(:environment)
    end

    it 'Importa os estados para a tabela estados' do
        EstadosBrasileiros::Estado.destroy_all
        expect(EstadosBrasileiros::Estado.count).to eq(0)

        Rake::Task['impotacao_estados:importar'].invoke
        expect(EstadosBrasileiros::Estado.count).to eq(27)
    end
end
