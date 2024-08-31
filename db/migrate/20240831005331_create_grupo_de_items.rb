class CreateGrupoDeItems < ActiveRecord::Migration[7.2]
  def change
    create_table :grupo_de_items do |t|
      t.text :codigo
      t.text :descricao

      t.timestamps
    end
  end
end
