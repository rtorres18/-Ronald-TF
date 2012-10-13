class CreateSabios < ActiveRecord::Migration
  def change
    create_table :sabios do |t|
      t.string :codemprendedor
      t.string :nombres
      t.string :apepaterno
      t.string :apematerno
      t.string :sexo
      t.string :tipodi
      t.integer :numerodi
      t.string :email
      t.integer :celular
      t.string :direccion
      t.date :fecnac
      t.string :password

      t.timestamps
    end
  end
end
