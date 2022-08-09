def total(prices)
  amount=0#Сумма начинается с нуля
  index=0#Перебор с первого элемента
  while index<prices.length#Пока цикл не вышел за границу массива
    amount+=prices[index]#Текущая цена прибавляется к накапливаемой сумме
    index+=1#Переход к следующей цене
  end
  amount#Возвращение суммы
end
def refund(prices)
    amount = 0#Считать начинаем с нуля
index = 0#Перебор с первого элемента
while index < prices.length#Пока цикл не вышел за границу массива
  amount -= prices[index]#Текущая цена отнимается от 0

    index += 1#Переход к следующей цене
end
  amount
end
def show_discounts(prices)
  index = 0#Перебор с первого элемента
  while index < prices.length#Пока цикл не вышел за границу массива
    amount_off = prices[index] / 3.0#Считаем скидку 33%
   puts format("Your discount: $%.2f", amount_off)
    index += 1#Переход к следующей цене
  end
end
