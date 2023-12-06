require_relative '../spec_helper'
require_relative '../../lib/estados_brasileiros_active_record/models/estado'

RSpec.describe EstadosBrasileirosActiveRecord::Estado, type: :model do
  # Testando a validação da presença de 'nome'
  it 'é inválido sem um nome' do
    estado = EstadosBrasileirosActiveRecord::Estado.new(nome: nil, sigla: 'SP')
    expect(estado).not_to be_valid
    expect(estado.errors[:nome]).to include("can't be blank")
  end

  # Testando a validação da presença de 'sigla'
  it 'é inválido sem uma sigla' do
    estado = EstadosBrasileirosActiveRecord::Estado.new(nome: 'São Paulo', sigla: nil)
    expect(estado).not_to be_valid
    expect(estado.errors[:sigla]).to include("can't be blank")
  end

  # Testando a criação de um estado válido
  it 'é válido com um nome e uma sigla' do
    estado = EstadosBrasileirosActiveRecord::Estado.new(nome: 'São Paulo', sigla: 'SP')
    expect(estado).to be_valid
  end
end
