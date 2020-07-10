#Desafío4
#María Paz Carvacho
#Ejercicio 2

require "./des4_ej2_modules.rb"

class Animal
  attr_reader :nombre
end

class Ave < Animal
  include Habilidades::Caminante
end

class Mamifero < Animal
  include Habilidades::Caminante
end

class Insecto
  include Alimentacion::Herbivoro
  include Habilidades::Volador
end

class Pinguino < Ave
  include Habilidades::Nadador
  include Alimentacion::Carnivoro #Estoy contando los peces como carne jaja
end

class Paloma < Ave
  include Habilidades::Volador
end

class Pato < Ave
  include Habilidades::Volador
  include Habilidades::Nadador
  include Alimentacion::Herbivoro
end

class Perro < Mamifero
  include Alimentacion::Carnivoro
end

class Gato < Mamifero
  include Alimentacion::Carnivoro
end

class Vaca < Mamifero
  include Alimentacion::Herbivoro
end

class Mosca < Insecto
  include Alimentacion::Carnivoro
end

class Mariposa < Insecto 
  #métodos añadidos en clase Insecto
end

class Abeja < Insecto
  #métodos añadidos en clase Insecto
end

#Instanciando y probando

tom = Gato.new()
puts "Instancia de gato"
puts tom.comer
puts tom.caminar

patito = Pato.new()
puts "Instancia de pato"
puts patito.nadar
puts patito.sumergir
puts patito.volar 
puts patito.caminar