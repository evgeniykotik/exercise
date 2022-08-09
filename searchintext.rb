def find_adjective(string)
  #Строка преобразуется в массив слов.
    words = string.split(" ")
  index = words.find_index("is")
  #Поиск индекса слова «is».
    words[index + 1]
  #Возвращает слово, следующее за «is».
end
  lines = []
#Эта переменная должна создаваться за пределами блока.
  File.open("reviews.txt") do |review_file|
    # Файл открывается и автоматически закрывается после завершения работы с ним.
    lines = review_file.readlines
    end
#Kаждая строка файла читается в массив. Находим строки, включающие название фильма.
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_lines.reject { |line| line.include?("--") }
#Исключаем подписи критиков.
#Обработка каждого отзыва
  adjectives = reviews.map do |review|
    adjective = find_adjective(review)
    #Ищем прилагательное.
      "'#{adjective.capitalize}'"
    #Возвращаем прилагательное, записанное с прописной буквы и заключенное в кавычки.
    end
    puts "The critics agree, Truncated is:"
  puts adjectives
