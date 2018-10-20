class CreateProfesores < ActiveRecord::Migration[5.2]
  def change
    create_table :profesores do |t|
      t.string :nombre
      t.string :apellido
      t.integer :documento
      t.integer :edad

      t.timestamps
    end
  end
end
