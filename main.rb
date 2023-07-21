#Utilizando los principios de Herencia y Polimorfismo, refactoriza el siguiente código #para eliminar la innecesaria cantidad de sentencias if en los métodos talk e introduce.

class Person
  attr_accessor :first_name, :last_name, :age, :type
  def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
  end
  
  def birthday
    @age += 1
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

class Student < Person
  def talk
    puts "Aquí es la clase de programación con Ruby?"
  end  
  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
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

t1 = Teacher.new("Taylor", "Swift", "32", "Teacher")
puts t1.first_name
puts t1.last_name
puts t1.age
puts t1.type
puts t1.talk
puts t1.introduce

s1 = Student.new("Rafael", "Garay", "45", "Student")
puts s1.first_name
puts s1.last_name
puts s1.age
puts s1.type
puts s1.talk
puts s1.introduce

p1 = Parent.new("Yolanda", "Montecinos", "58", "Parent")
puts p1.first_name
puts p1.last_name
puts p1.age
puts p1.type
puts p1.talk
puts p1.introduce