class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.integer :documento
      t.date :fecha_nac
      t.references :curso, foreign_key: true

      t.timestamps
    end
  end
end
