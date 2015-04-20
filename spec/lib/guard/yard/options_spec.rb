require './spec/spec_helper'
require 'guard/yard/yard_command'
require 'guard/yard/options'

describe Guard::Yard::Options do
  context 'DEFAULTS' do
    it 'should include `cmd: yard`' do
      expect(Guard::Yard::Options::DEFAULTS[:cmd]).
              to eq('yard')
    end
  end
end