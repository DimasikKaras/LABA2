def proverka(num)
  a = num.abs
  res = 0
  
  return 1 if a == 0
  
  while a > 0
    promej = a % 10
    res += 1 if promej % 2 == 0
    a /= 10
  end
  res
end

def vivod(num, res)
  puts "Число #{num} имеет #{res} чётных цифр"
end

def vvodChisla(firstvvod)
  if firstvvod
    print "Введите число (для завершения введите пустую строку): "
  else
    print "Введите следующее число: "
  end
  input = gets.chomp
  return nil if input.empty?
  
  # Проверяем, является ли ввод целым числом
  if input =~ /^-?\d+$/
    input.to_i
  else
    :invalid_input
  end
end

# Основная программа
firstvvod = true
loop do
  input = vvodChisla(firstvvod)
  firstvvod = false
  
  if input.nil?
    puts "Программа завершена."
    break
  elsif input == :invalid_input
    puts "Ошибка! Введите целое число или пустую строку для выхода."
    next
  end
  
  res = proverka(input)
  vivod(input, res)
end
