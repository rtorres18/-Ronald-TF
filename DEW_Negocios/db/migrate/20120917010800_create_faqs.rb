class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.text :pregunta
      t.text :respuesta
      t.string :satisfactorio

      t.timestamps
    end
  end
end
