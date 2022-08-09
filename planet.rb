class CelestialBody
  attr_accessor :type, :name
end
#Создаем хэш.При последующем вызове блок получает ссылку на ключ, к которому происходит обращение
bodies=Hash.new do |hash,key|
  #Создается объект, который станет значением этого ключа
  body=CelestialBody.new
  body.type="planet"
  #Присваиваем объект текущему ключу хэша. Возвращает значение
  hash[key]=body
end
bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'
puts bodies