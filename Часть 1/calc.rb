# frozen_string_literal: true

# Класс, содержащий методы для вычислений
class Calc
  def self.get
    begin
      a = Float(gets.chomp)
    rescue StandardError
      print('Вы ввели недопустимое значение. Пожалуйста, введите число: ')
      retry
    end
    a
  end

  def self.calc(input_x, input_z)
    input_x * (Math.cos(input_z) + Math.exp(-input_x - 3))
  end
end
