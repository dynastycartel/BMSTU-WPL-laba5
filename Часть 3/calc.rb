# frozen_string_literal: true

# Класс, содержащий методы для вычислений
class Calc
  def self.read_strings
    arr = gets.chomp.split('.')
    arr.map! { |sub_str| sub_str.split(' ') }
  end

  def self.change_order(arr, new_arr)
    arr.each do |sub_str|
      odd_words, even_words = * sub_str.partition { |obj| sub_str.index(obj).even? }
      new_msg_arr = []
      (odd_words.length > even_words.length ? odd_words.length : even_words.length).times do |i|
        new_msg_arr.push(even_words[i]) unless even_words[i].nil?
        new_msg_arr.push(odd_words[i]) unless odd_words[i].nil?
      end
      new_arr.push(new_msg_arr)
    end
    new_arr
  end
end
