require './spec/spec_helper'
require 'guard/yard/version'
describe Guard::YardVersion do
  it 'has a version number' do
    expect(Guard::YardVersion::VERSION).not_to be nil
  end
end
describe Guard::Yard do
  let(:default_options) { Guard::Yard::Options::DEFAULTS }
  let(:options) { {} }
  let(:plugin) { Guard::Yard.new({foo: 'bar'}) }

  before do
    allow(Guard::Compat::UI).to receive(:info)
  end

  describe ".initialize" do
    it "instantiates with default and custom options" do
      guard_yard = Guard::Yard.new({foo: 'bar'})
      expect(guard_yard.options).to eq(default_options.merge(foo: 'bar'))
    end
  end
end
