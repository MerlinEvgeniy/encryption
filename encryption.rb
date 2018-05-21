#encoding: utf-8


require 'digest'

puts "Введите слово или фразу для шифрования"
phrase = gets.chomp

puts "Каким способом зашифровать?"
puts "1. MD5"
puts "2. SHA1"

ways = gets.chomp

if ways == "1"
  puts "Вот что получилось:"
  print Digest::MD5.hexdigest(phrase)
elsif ways == "2"
  puts "Вот что получилось:"
  print Digest::SHA1.hexdigest(phrase)
else
  puts "Вы не выбрали доступный способ шифрования"
end