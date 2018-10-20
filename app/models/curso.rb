class Curso < ApplicationRecord
  belongs_to :profesor
  has_many :estudiantes
end
