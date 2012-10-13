class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :codcategoria
      t.string :nombrecategoria

      t.timestamps
    end
  end
end
