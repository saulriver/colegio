class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :grado
      t.string :materia
      t.references :profesor, foreign_key: true

      t.timestamps
    end
  end
end
