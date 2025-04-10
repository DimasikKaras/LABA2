def turniri(a)
  itog = 0
  while a > 1
    if a % 2 == 0  # Четное количество команд
      itog += a / 2
      a /= 2
    else  # Нечетное количество команд
      itog += (a - 1) / 2
      a = (a - 1) / 2 + 1
    end
  end
  itog
end

def vvodchisla
  print "Введите количество команд: "
  
  loop do
    input = gets.chomp
    
    # Проверка, что введено положительное целое число
    if input =~ /^\d+$/ && input.to_i > 0
      return input.to_i
    else
      print "Ошибка! Введите целое положительное число: "
    end
  end
end

def vivod(a, b)
  puts "Общее количество матчей для #{a} команд: #{b}"
end

a = vvodchisla
b = turniri(a)
vivod(a, b)
