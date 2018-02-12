class CreateOrigames < ActiveRecord::Migration[5.1]
  def change
    create_table :origames do |t|
      t.string :nane
      t.string :dificultad
      t.string :categoria
      t.string :imagen

      t.timestamps
    end
  end
end
