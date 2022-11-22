# frozen_string_literal: true

require_relative 'calc'

RSpec.describe Calc do
  context 'When started from day 27 and 2 days are to be checked' do
    it 'should return [2, {"27"=>-13.6, "28"=>-11.4}]' do
      expect(Calc.show_info(27, 2)).to eq([2, { '27' => -13.6, '28' => -11.4 }])
    end
  end

  context 'When started from day 9 and 5 days are to be checked' do
    it 'should return [3, {"11"=>-16.0, "12"=>-11.8, "13"=>-14.8}]' do
      expect(Calc.show_info(9, 5)).to eq([3, { '11' => -16.0, '12' => -11.8, '13' => -14.8 }])
    end
  end

  context 'When started from day 17 and 6 days are to be checked' do
    it 'should return [6, {"17"=>-20.8, "18"=>-23.8, "19"=>-24.4, "20"=>-13.8, "21"=>-15.8, "22"=>-19.5}]' do
      expect(Calc.show_info(17,
                            6)).to eq([6,
                                       { '17' => -20.8, '18' => -23.8, '19' => -24.4, '20' => -13.8, '21' => -15.8,
                                         '22' => -19.5 }])
    end
  end
end
