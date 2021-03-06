# encoding: utf-8

require 'spec_helper'

describe Adamantium::ModuleMethods, '#memoized?' do
  let(:object) do
    Class.new do
      include Adamantium
      def foo
      end
      memoize :foo
    end
  end

  subject { object.memoized?(name) }

  context 'with memoized method' do
    let(:name) { :foo }

    it { should be(true) }
  end

  context 'with non memoized method' do
    let(:name) { :bar }

    it { should be(false) }
  end
end
