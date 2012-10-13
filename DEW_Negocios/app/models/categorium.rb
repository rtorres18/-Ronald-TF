class Categorium < ActiveRecord::Base
  has_many :subcategorias
  attr_accessible :codcategoria, :nombrecategoria
  validates_presence_of :nombrecategoria , :message => 'Falta agregar la descripcion'

end
