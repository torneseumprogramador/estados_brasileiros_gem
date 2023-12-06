# frozen_string_literal: true

RSpec.describe EstadosBrasileiros do
  it "has a version number" do
    expect(EstadosBrasileiros::VERSION).not_to be nil
  end

  it "loads the Railtie into Rails" do
    railtie = Rails::Railtie.subclasses.find { |rt| rt.to_s == 'EstadosBrasileiros::Railtie' }
    expect(railtie).not_to be_nil
  end
end
