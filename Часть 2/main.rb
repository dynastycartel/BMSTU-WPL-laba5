# frozen_string_literal: true

require_relative 'calc'

puts 'Эта программа может отобразить данные о температуре воздуха в Москве за весь февраль 2011 года.'
puts 'Вам нужно только выбрать первый день и количество следующих за ним дней, данные о которых Вы хотите просмотреть.'
print 'Введите номер дня, с которого пойдет отсчет: '
start_day = Calc.read_date
days_q = 1
if start_day < 28
  print 'Введите количество дней, данные о которых вы хотите просмотреть: '
  days_q = Calc.read_q(start_day)
end
temps = [-8.7, -4.3, -2.1, -0.5, -0.3, -1.9, -3.8, -3.0, -0.1, -10.0, -16.0, -11.8, -14.8,
         -12.0, -20.2, -20.4, -20.8, -23.8, -24.4, -13.8, -15.8, -19.5, -16.9, -15.2, -15.1, -14.3, -13.6, -11.4]
seeked_days_q, seeked_days = Calc.show_info(temps, start_day, days_q)
puts "Количество дней, температура воздуха которых была ниже -10 градусов, за указанный Вами период: #{seeked_days_q}"
puts 'Вот эти дни:'
seeked_days.each { |index, value| puts "#{index} марта: #{value}" }
