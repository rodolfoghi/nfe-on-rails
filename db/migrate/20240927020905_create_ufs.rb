class CreateUfs < ActiveRecord::Migration[7.2]
  def change
    create_table :ufs do |t|
      t.integer :codigo
      t.string :descricao

      t.timestamps
    end
  end
end
