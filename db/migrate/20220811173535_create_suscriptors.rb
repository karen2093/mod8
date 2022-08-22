class CreateSuscriptors < ActiveRecord::Migration[7.0]
  def change
    create_table :suscriptors do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :telefono
      t.string :twitter

      t.timestamps
    end
  end
end
