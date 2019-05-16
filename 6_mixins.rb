#Crear una clase Student con un método constructor que recibirá 3 argumentos (nombre, nota1 y nota2). Cada una de las notas tendrá, por defecto, valor 4 en el caso que no se ingrese una nota al momento de crear una nueva instancia.
#La clase también debe tener una variable de clase llamada quantity la que será iniciada en 0 y se incrementará en 1 cada vez que se instancie un nuevo objeto.
#Crear un módulo Test con un método result. Este método debe calcular el promedio de 2 notas y si ese promedio es superior a 4 entregrar un mensaje que debe decir "Estudiante aprobado". En caso contrario, enviará un mensaje "Estudiante reprobado".
#Crear un segundo módulo Attendance con un método student_quantity que permita mostrar en pantalla la cantidad de estudiantes creados.
#Añadir a la clase Student el módulo Test como métodos de instancia y el módulo Attendance como métodos de clase.
#Crear 10 objetos de la clase Student y utilizar los métodos creados para saber si los alumnos están aprobados o no y, finalmente, mostrar el total de alumnos creados.


module Test
    def result
     average = @scores.inject(&:+)/ @scores.size.to_f
     if average >= 4.0
         "Estudiante #{@name} aprobado con nota #{average}"
     else
         "Estudiante #{@name} reprobado con nota #{average}"
     end
    end
 end

module Attendance
    def student_quantity
        "la cantidad de alumnos ingresados son #{@@count}"
    end
end

class Student
    include Test
    attr_reader :name, :scores
    def initialize(name, *scores) # "*" =splat => agrupa a las notas y lo separa del name
    @name = name
    @scores = scores.map(&:to_i)# a c/u de los elemnentos los convierte en Integers
    end
end

class Quantity < Student
    include Attendance
    @@count = 0
    def initialize(name, *scores)
      super
      @@count +=1
    end
  end



student = Student.new('Rodrigo',3,5,7)
student2 = Student.new('Pedro', 4,2,3)
student3 = Student.new('Juan', 5,4,6,7)
puts student.result
puts student2.result
puts student3.result

puts student.student_quantity
