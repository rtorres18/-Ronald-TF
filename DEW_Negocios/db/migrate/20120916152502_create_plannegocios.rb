class CreatePlannegocios < ActiveRecord::Migration
  def change
    create_table :plannegocios do |t|
      t.string :codplan
      t.string :tituloplan
      t.string :codcategoria
      t.string :codsubcategoria
      t.text :vision
      t.text :razonamiento
      t.integer :tiempoejecucionano
      t.integer :tiempoejecucionmes
      t.integer :tiempoejecuciondia
      t.decimal :inversiontotal
      t.decimal :margenneto
      t.decimal :roi
      t.string :linkdocumento
      t.decimal :precioventa
      t.string :validadoplan
      t.text :mensajerechazo
      t.string :codsabio
      t.string :codemprendedor

      t.timestamps
    end
  end
end
