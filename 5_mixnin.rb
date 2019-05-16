# Transformar la clase Herviboro en un módulo. Implementar el módulo en la clase Conejo mediante Mixin para poder acceder al método dieta desde la instancia. Finalmente imprimir la definición de Hervíboro.
module Herviboro
  Definir = 'Sólo me alimento de vegetales!'
  def self.definir
    Definir
  end
  def dieta
    "Soy un Herviboro!"
  end
end


 class Animal
  def saludar
    "Soy un animal!"
  end
 end

class Conejo < Animal
  include Herviboro
  attr_reader :name
  def initialize(name)
    @name = name
  end
 end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro::Definir # es lo mismo que Herviboro.definir
puts conejo.name
puts Herviboro.definir # es lo mismo Herviboro::Definir
