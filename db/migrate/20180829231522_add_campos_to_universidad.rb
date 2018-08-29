class AddCamposToUniversidad < ActiveRecord::Migration[5.2]
  def change
    add_column :universidades, :place, :string
    add_column :universidades, :latitude, :float
    add_column :universidades, :longitude, :float
  end
end
