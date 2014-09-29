class CreateEjercicios < ActiveRecord::Migration
  def change
    create_table :ejercicios do |t|
      t.string :nombre
      t.integer :puntos
      t.integer :rutina_id

      t.timestamps
    end
  end
end
