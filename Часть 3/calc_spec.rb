# frozen_string_literal: true

require 'faker'
require_relative 'calc'

RSpec.describe Calc do
  context 'The string "Amogus is super swag"' do
    it 'turns into "is Amogus swag super"' do
      expect(Calc.change_order([%w[Amogus is super swag]], [])).to eq([%w[is Amogus swag super]])
    end
  end

  context '' do
    it '' do
      str = (4.times.map { Faker::Lorem.characters(number: 4) }).join(' ')
      arr = str.split
      desired_arr = [[arr[1], arr[0], arr[3], arr[2]]]
      expect(Calc.change_order([arr], [])).to eq(desired_arr)
    end
  end

  context 'When an empty string is given' do
    it 'returns an empty string' do
      expect(Calc.change_order([], [])).to eq([])
    end
  end
end
