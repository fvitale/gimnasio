class CreateRutinas < ActiveRecord::Migration
  def change
    create_table :rutinas do |t|
      t.string :nombre
      t.integer :puntos

      t.timestamps
    end
  end
end
