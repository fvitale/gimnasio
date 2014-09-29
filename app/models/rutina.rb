class Rutina < ActiveRecord::Base
  attr_accessible :nombre, :puntos
  has_many :ejercicio
end
