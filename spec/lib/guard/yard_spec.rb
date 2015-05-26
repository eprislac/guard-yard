require 'guard/compat/test/helper'
require './spec/spec_helper'
require 'guard/yard/version'
describe Guard::Yard::VERSION do
  it 'has a version number' do
    expect(Guard::Yard::VERSION).not_to be nil
  end
end
describe Guard::Yard do
  let(:default_options) { Guard::Yard::Options::DEFAULTS }
  let(:options) { {} }
  let(:plugin) { Guard::Yard.new({foo: 'bar'}) }

  before do
    allow(Guard::Compat::UI).to receive(:info)
  end

  describe '.initialize' do
    it 'instantiates with default and custom options' do
      expect(plugin.options).to eq(default_options.merge(foo: 'bar'))
    end
  end
end
