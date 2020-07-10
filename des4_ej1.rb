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
    puts "Aquí es la clase de programación con Ruby?"
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end

end

class Teacher < Person

  def talk
    puts "Bienvenidos a la clase de programación con Ruby!"
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end

end

class Parent < Person

  def talk
    puts "Aquí es la reunión de apoderados?"
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end

end

#Instanciando y probando
padre = Parent.new("Antonio", "Carv", 54)
padre.introduce
padre.talk

profe = Teacher.new("Caro", "R", 27)
profe.introduce
profe.talk

estudiante = Student.new("Paz", "Carv", 30)
estudiante.introduce
estudiante.talk

