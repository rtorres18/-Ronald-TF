class CreateEmprendedors < ActiveRecord::Migration
  def change
    create_table :emprendedors do |t|
      t.string :codsabio
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
      t.string :apelativo
      t.text :autobigrafia
      t.string :web
      t.integer :ctabancaria

      t.timestamps
    end
  end
end
