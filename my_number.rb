#Get My Number Game!
# Written by: me.
#Получение пользовательского имени
puts "Welcome to Gen My Number!"
print"What is your name? "
input=gets.chomp
puts "Welcome, #{input}!"
#Сохранение рандомного числа
puts "I\'ve got a random number between 1 and 100."
puts "Can you guess it?"
target=rand(100)+1
#Отслеживание количества попыток
num_guesses=0
#Признак продолжения игры
guessed_it=false
#Цикл пока попыток меньше 10 и пока гуессед_ит=фолс
until num_guesses == 10 || guessed_it
puts "You\'ve got #{10-num_guesses} guesses left."
print"Make a guess:"
guess=gets.to_i
#Прибавление +1 с каждой попыткой.
num_guesses+=1
#Сравнение введенного числа с загаданным
# и вывод соответствующего сообщения.
if guess<target
  puts "Ooops. Your guess is LOW!"
elsif guess>target
  puts "Oooops. Your guess is HIGH!"
else guess==target
puts "Good job, #{input}! My congretulations!"
guessed_it=true
end
#Конец цикла
end
#Если попыток не осталось сообщить загаданное число.
unless guessed_it
  puts "Sorry. You did not get my number. My number is #{target}."
end