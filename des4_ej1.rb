#Desafío 4 - Herencia, polimorfismo y módulos
#María Paz Carvacho Tagle


#Ejercicio 1

class Person
  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end
  
  def birthday
    @age += 1
  end

end

class Student < Person

  def talk
    "Aquí es la clase de programación con Ruby?"
  end

  def introduce
    "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end

end

class Teacher < Person

  def talk
    "Bienvenidos a la clase de programación con Ruby!"
  end

  def introduce
    "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end

end

class Parent < Person

  def talk
    "Aquí es la reunión de apoderados?"
  end

  def introduce
    "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end

end

#Instanciando y probando
padre = Parent.new("Antonio", "Carv", 54)
puts padre.introduce
puts padre.talk

profe = Teacher.new("Caro", "R", 27)
puts profe.introduce
puts profe.talk

estudiante = Student.new("Paz", "Carv", 30)
puts estudiante.introduce
puts estudiante.talk

