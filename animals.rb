#Создание классов и методов экземпляра
class Animal
  #Определение методов чтения атрибутов нэйм и эйдж
  attr_reader :name, :age
  #Метод записи атрибута нэйм
  def name=(value)
    if value==""
      #Проверка данных
      raise "Name can not be blank."
    end
    @name=value
  end
  #Метод записи атрибута эйдж
  def age=(value)
    if value<0
      #Проверка данных
      raise "An age of #{value} is not valid."
    end
    @age=value
  end
  #Метод экземпляра
  def talk
    puts "#{@name} says chirp! Chirp!"
  end
  #Метод экземпляра
  def move( destination)
    puts "#{@name} flies to the #{destination}."
  end
  #Метод экземпляра
  def report_age
    puts "#{@name} is #{@age} years old."
  end
end
class Dog<Animal
  def talk
    puts "#{@name} says Bark!"
  end
end
class Cat<Animal
  def talk
    puts "#{@name} says Meow!"
  end
end
class Bird<Animal
end
class Armadillo < Animal
  def move(destination)
    puts "#{name} unrolls!"
    super
  end
end
#Создание экземпляров класса
john=Dog.new
john.age=2
john.name="John"
john.move("house")
john.report_age
