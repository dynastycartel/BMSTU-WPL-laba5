# frozen_string_literal: true

require_relative 'calc'

puts 'Эта программа берет строки, введенные Вами с клавиатуры, разбивает каждую строку на пары слов и меняет
слова в каждой паре местами.'
puts 'Вам нужно ввести любое количество строк, состоящих из любого количества слов'
puts 'Введите строки:'
all_strings = Calc.read_strings
puts 'Исходный набор строк:'
p all_strings
all_strings = Calc.change_order(all_strings, [])
puts 'Итоговый набор слов:'
p all_strings
