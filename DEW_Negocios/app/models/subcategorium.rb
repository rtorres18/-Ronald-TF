class Subcategorium < ActiveRecord::Base
  belongs_to :categoria
  attr_accessible :codcategoria, :codsubcategoria, :nombresubcategoria, :categoria_id
  validates_presence_of :nombresubcategoria , :message => 'falta agregar la descripcion'
  validates_presence_of :categoria_id, :message => 'falta seleccionar' 

end
