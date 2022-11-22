# frozen_string_literal: true

require_relative 'calc'

RSpec.describe Calc do
  include Calc
  context 'When x is -3 and z is 0' do
    it 'returns -6' do
      expect(calc(-3, 0)).to eq(-6.0)
    end
  end

  context 'When x is -4 and z is pi' do
    it 'returns approximately -6.8' do
      res = -4 * (-1.0 + Math.exp(1))
      expect(calc(-4, 3.1415926535)).to eq res
    end
  end

  context 'When x is 0 and z is 1000000' do
    it 'returns 0' do
      expect(calc(0, 1_000_000)).to eq 0
    end
  end
end
