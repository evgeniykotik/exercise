class Mage
  attr_accessor :name, :spell
  def enchant(target)
    puts "#{@name} casts #{@spell} on #{target.name}!"
  end
end
rex=Mage.new
rex.name="Andy"
rex.spell="Avabakedaba"
ras=Mage.new
ras.name="Chmo"
rex.enchant(ras)