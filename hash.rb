lines = []
File.open("votes.txt") do |file|
  lines = file.readlines
end
#Создаем новый хеш с объектом по умолчанию «0»
votes = Hash.new(0)
lines.each do |line|
  name = line.chomp
  name.upcase!
#Увеличиваем полученное значение
  votes[name] += 1
end
votes.each do |name, count|
  puts "#{name}: #{count}"
  end