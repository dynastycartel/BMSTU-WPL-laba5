# frozen_string_literal: true

require_relative 'calc'

puts 'Эта программа может вычислить значение функции a = x(cos(z) + e^-(x+3))'
puts 'Вам нужно только выбрать и ввести значения x и z'
print('Введите x: ')
input_x = Calc.get
print('Введите z: ')
input_z = Calc.get

puts "x = #{input_x}"
puts "z = #{input_z}"
puts "Результат функции: #{Calc.calc(input_x, input_z)}"
