class CreateUniversidades < ActiveRecord::Migration[5.2]
  def change
    create_table :universidades do |t|
      t.string :nombre
      t.references :localidad, foreign_key: true
      t.string :email
      t.string :reponsable

      t.timestamps
    end
  end
end
