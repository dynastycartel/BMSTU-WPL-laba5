# frozen_string_literal: true

# Ошибка, выскакивающая при выходе за установленный числовой промежуток
class NumLimitError < StandardError
  def initialize(msg = 'NumLimitError')
    super
  end
end

# Ошибка, выскакивающая при вводе отрицательного числа
class NegativeNumError < StandardError
  def initialize(msg = 'NegativeNumError')
    super
  end
end

# Класс, содержащий методы для вычислений
class Calc
  def self.read_date
    begin
      dates = Array(1..28)
      a = Integer(gets.chomp)
      raise if (a < dates[0]) || (a > dates[-1])
    rescue StandardError
      print('Вы ввели недопустимое значение. Пожалуйста, введите целое число от 1 до 28: ')
      retry
    end
    a
  end

  def self.read_q(start_day)
    begin
      a = Integer(gets.chomp)
      raise NumLimitError if start_day + a > 28 + 1
      raise NegativeNumError if a < 1
    rescue ArgumentError
      print('Вы ввели недопустимое значение. Пожалуйста, введите целое положительно число: ')
      retry
    rescue NumLimitError
      print("Вы запросили данные за #{a} дней, начиная с #{start_day} февраля, но в феврале только 28 дней.\n")
      print("Пожалуйста, введите целое число от 1 до #{28 + 1 - start_day}: ")
      retry
    rescue NegativeNumError
      print("Количество запрашиваемых дней не может быть меньше единицы.\n")
      print("Пожалуйста, введите целое число от 1 до #{28 + 1 - start_day}: ")
      retry
    end
    a
  end

  def self.show_info(temps, start_day, days_q)
    seeked_days = {}
    seeked_days_q = 0
    (start_day - 1...start_day - 1 + days_q).each do |i|
      if temps[i] < -10.0
        seeked_days_q += 1
        seeked_days[(i + 1).to_s] = temps[i]
      end
    end
    [seeked_days_q, seeked_days]
  end
end
