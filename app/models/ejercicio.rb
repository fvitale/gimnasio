class Ejercicio < ActiveRecord::Base
  attr_accessible :nombre, :puntos, :rutina_id
  belongs_to :rutina
  validates :puntos, presence: true
end
