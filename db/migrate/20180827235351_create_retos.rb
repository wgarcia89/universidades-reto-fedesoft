class CreateRetos < ActiveRecord::Migration[5.2]
  def change
    create_table :retos do |t|
      t.string :titulo
      t.string :email
      t.string :telefono
      t.string :nombre_completo
      t.string :descripcion
      t.references :localidad, foreign_key: true

      t.timestamps
    end
  end
end
