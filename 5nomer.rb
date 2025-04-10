def minOperations(s)
  n = s.length
  min_ops = n

  (n / 2).downto(1) do |k|
    if s[0, k] == s[k, k]
      ops = k + 1 + (n - 2 * k)
      if ops < min_ops
        min_ops = ops
      end
    end
  end
  min_ops
end

def vvod
  print "Введите строку: "
  gets.chomp
end

def vivod(input, operations)
  puts "\nРезультат:"
  puts "Строка: \"#{input}\""
  puts "Минимальное количество операций: #{operations}"
end

input = vvod
result = minOperations(input)
vivod(input, result)
