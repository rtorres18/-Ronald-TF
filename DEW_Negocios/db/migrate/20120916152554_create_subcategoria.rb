class CreateSubcategoria < ActiveRecord::Migration
  def change
    create_table :subcategoria do |t|
      t.string :codcategoria
      t.string :codsubcategoria
      t.string :nombresubcategoria
	  t.references :categoria

      t.timestamps
    end
	add_index :subcategoria, :categoria_id
  end
end

