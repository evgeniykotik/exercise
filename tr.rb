class Employee
  #Атрибут нэйм наследуется классами саларидемплойе и хаурлиэмплойе
  attr_reader :name
  def name=(name)
    if name==""
      raise "Name can not be blank!"
    else
      @name=name
    end
  end
  #Методы «initialize» классов Еmployee SalariedEmployee и HourlyE помощи вызывают этот метод при ключевого слова «super»
  def initialize(name="Annonymus")
    self.name=name
  end
  def print_name
    puts "Name:#{name}"
  end
end
class SalariedEmployee < Employee
  attr_reader :salary
  def salary=(salary)
    if salary<0
      raise "A salary of #{salary} is not valid!"
    else
      @salary=salary
    end
  end

  def initialize(name="Annonymus", salary=0)
    super(name)
    self.salary=salsry
  end
  def print_pay_stab
    print_name
    pay_for_period= (salary*14.0)/365
    formatted_pay=format("$%.2f",pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end
class HourlyEmployee < Employee
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end
  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end
  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end
  attr_reader :hourly_wage, :hours_per_week
  def hourly_wage=(hourly_wage)
    if hourly_wage<0
      raise "A hourly wage of #{hourly_wage} is not valid!"
    else
      @hourly_wage=hourly_wage
    end
  end
  def hours_per_week=(hours_per_week)
    if hours_per_week<0
      raise "A hours per week of #{hours_per_week} is not valid!"
    else
      @hours_per_week=hours_per_week
    end
  end
  def initialize(name="Annonymus", hourly_per_week=0.0, hourly_wage=0)
    super(name)
    self.hours_per_week=hourly_per_week
    self.hourly_wage=hourly_wage
  end
  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end
angela = HourlyEmployee.janitor("Angela Matthews")
angela.print_pay_stub







