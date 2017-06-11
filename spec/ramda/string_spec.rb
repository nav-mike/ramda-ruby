require 'spec_helper'

describe Ramda::String do
  let(:r) { described_class }

  context '#to_upper' do
    it 'from docs' do
      expect(r.to_upper('abc')).to eq('ABC')
    end

    it 'curried' do
      expect(r.to_upper.call('abc')).to eq('ABC')
    end
  end

  context '#to_lower' do
    it 'from docs' do
      expect(r.to_lower('XYZ')).to eq('xyz')
    end

    it 'curried' do
      expect(r.to_lower.call('XYZ')).to eq('xyz')
    end
  end
end
